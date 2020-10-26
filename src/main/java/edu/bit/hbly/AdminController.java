package edu.bit.hbly;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import edu.bit.hbly.service.AdminService;
import edu.bit.hbly.utils.UploadFileUtils;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;
import net.sf.json.JSONArray;




@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService adminService;
	
	
	//Servlet-context���� ������ uploadPath
	@Resource(name="uploadPath")
	private String uploadPath;
	
	//������������ ����
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void getIndex() throws Exception{
		logger.info("get index");
	}
	
	
	//ck �����Ϳ��� ���� ���ε�
		@RequestMapping(value = "/goods/ckUpload", method = RequestMethod.POST)
		public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload ) throws Exception{
			logger.info("post CKEditor img upload");
			
			
			//���� ���� ����
			 UUID uid = UUID.randomUUID();
			 
			 OutputStream out = null;
			 PrintWriter printWriter = null;
			   
			 //���ڵ�
			 res.setCharacterEncoding("utf-8");
			 res.setContentType("text/html;charset=utf-8");
			 
			 try {
			  
			  String fileName = upload.getOriginalFilename();  //���� �̸� ��������
			  byte[] bytes = upload.getBytes();
			  
			  //���ε� ���
			  String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
			  
			  out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			  out.flush();  // out�� ����� �����͸� �����ϰ� �ʱ�ȭ
			  
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
			  String fileUrl = "/ckUpload/" + uid + "_" + fileName;  //�ۼ�ȭ��
			  
			  // ���ε�� �޽��� ���
			  JsonObject json = new JsonObject();
			  json.addProperty("uploaded", 1);
			  json.addProperty("fileName", fileName);
			  json.addProperty("url", fileUrl);
			  printWriter.println(json);
			  printWriter.flush();
			  
			 } catch (IOException e) { e.printStackTrace();
			 } finally {
			  try {
			   if(out != null) { out.close(); }
			   if(printWriter != null) { printWriter.close(); }
			  } catch(IOException e) { e.printStackTrace(); }
			 }
			 
			 return; 
		}
		
	
	
	//��ǰ ��� GET
	@RequestMapping(value = "/goods/register", method = RequestMethod.GET)
	public void getGoodsRegister(Model model) throws Exception {
	 logger.info("get goods register");
	 
	 List<CategoryVO> category = null;
	 category = adminService.category();
	 model.addAttribute("category", JSONArray.fromObject(category));
	}
	
	// ��ǰ ���
	@RequestMapping(value = "/goods/register", method = RequestMethod.POST)
	public String postGoodsRegister(GoodsVO vo, MultipartFile file) throws Exception {
	 
	 String imgUploadPath = uploadPath + File.separator + "imgUpload"; // �̹����� ���ε��� ������ ���� = /uploadPath/imgUpload
	 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);// ���� ������ �������� ������ ������ ����
	 String fileName = null; // �⺻ ��ο� ������ �ۼ��Ǵ� ��� + �����̸�
	   
	 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
	  // ���� ��ǲ�ڽ��� ÷�ε� ������ ���ٸ�(=÷�ε� ������ �̸��� ���ٸ�)
	  
	  fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);

	  // gdsImg�� ���� ���� ��� + ���ϸ� ����
	  vo.setGoodsImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
	  // gdsThumbImg�� ����� ���� ��� + ����� ���ϸ� ����
	  vo.setGoodsThumbImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
	  
	 } else { // ÷�ε� ������ ������
	  fileName = File.separator + "images" + File.separator + "none.png";
	  // �̸� �غ�� none.png������ ��� �����
	  
	  vo.setGoodsImage(fileName);
	  vo.setGoodsThumbImage(fileName);
	 }
	      
	 adminService.register(vo);
	 
	 return "redirect:/admin/index";
	}
	
	
	
	
	
	
	//?��?�� 목록
	@RequestMapping(value = "/goods/list", method = RequestMethod.GET)
	public void getGoodsList(Model model) throws Exception{
		logger.info("get goods list");
		
		List<GoodsViewVO> list = adminService.goodslist();
		model.addAttribute("list", list);
	}
	
	//?��?�� 조회
	@RequestMapping(value = "/goods/view", method = RequestMethod.GET)
	public void getGoodsview(@RequestParam("n") int goodsNumber, Model model) throws Exception{
		logger.info("get goods view");
		
		GoodsViewVO goods = adminService.goodsView(goodsNumber);
		
		model.addAttribute("goods",goods);
	}
	
	    //?��?�� ?��?��GET
		@RequestMapping(value = "/goods/modify", method = RequestMethod.GET)
		public void getGoodsModify(@RequestParam("n") int goodsNumber, Model model) throws Exception {
		 logger.info("get goods modify");
		 
		 GoodsViewVO goods = adminService.goodsView(goodsNumber);
		 model.addAttribute("goods",goods);
		 
		 List<CategoryVO> category = null;
		 category = adminService.category();
		 model.addAttribute("category", JSONArray.fromObject(category));
		}
		
		// ?��?�� ?��?��POST
		@RequestMapping(value = "/goods/modify", method = RequestMethod.POST)
		public String postGoodsModify(GoodsVO vo, MultipartFile file, HttpServletRequest req) throws Exception {
		 logger.info("post goods modify");
		 
		// ?��로운 ?��?��?�� ?��록되?��?���? ?��?��
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // 기존 ?��?��?�� ?��?��
		  new File(uploadPath + req.getParameter("goodsImage")).delete();
		  new File(uploadPath + req.getParameter("goodsThumbImage")).delete();
		  
		  // ?���? 첨�??�� ?��?��?�� ?���?
		  String imgUploadPath = uploadPath + File.separator + "imgUpload";
		  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		  
		  vo.setGoodsImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  vo.setGoodsThumbImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // ?��로운 ?��?��?�� ?��록되�? ?��?��?���?
		  // 기존 ?��미�?�? 그�?�? ?��?��
		  vo.setGoodsImage(req.getParameter("goodsImage"));
		  vo.setGoodsThumbImage(req.getParameter("goodsThumbImage"));
		  
		 }
		 
		 
		 adminService.goodsModify(vo);
		 
		 return "redirect:/admin/index";
		}
		
		// ?��?�� ?��?��POST
		@RequestMapping(value = "/goods/delete", method = RequestMethod.POST)
		public String postGoodsDelete(@RequestParam("n") int goodsNumber) throws Exception {
		logger.info("post goods delete");

		adminService.goodsDelete(goodsNumber);
				 
		return "redirect:/admin/index";
		}
		
		//�ֹ� ���
		@RequestMapping(value = "/shop/orderList", method = RequestMethod.GET)
		public void getOrderList(Model model) throws Exception {
		logger.info("get order list");

		List<OrderVO> orderList = adminService.orderList();
		
		model.addAttribute("orderList", orderList);
		}
		//�ֹ� �� ���
		@RequestMapping(value = "/shop/orderView", method = RequestMethod.GET)
		public void getOrderList(@RequestParam("n") String orderId, OrderVO order, Model model) throws Exception {
			
		logger.info("get order view");

		order.setOrderId(orderId);
		List<OrderListVO> orderView = adminService.orderView(order);
		
		model.addAttribute("orderView", orderView);
		}
		
		//�ֹ� �� ��� - ���� ����
		@RequestMapping(value = "/shop/orderView", method = RequestMethod.POST)
		public String delivery(OrderVO order) throws Exception {
		logger.info("post order view");

		adminService.delivery(order);
		
		List<OrderListVO> orderView = adminService.orderView(order);
		GoodsVO goods = new GoodsVO();
		
		for(OrderListVO i : orderView) {
			goods.setGoodsNumber(i.getGoodsNumber());
			goods.setGoodsStock(i.getCartStock());
			adminService.changeStock(goods);
		}
		
		return "redirect:/admin/shop/orderView?n=" + order.getOrderId();
		}
		
		//��� �Ұ�(���)
		@RequestMapping(value = "/shop/allGoodsReply", method= RequestMethod.GET)
		public void getAllGoodsReply(Model model) throws Exception{
			logger.info("get all reply");
			
			List<GoodsReplyListVO> goodsReply = adminService.allGoodsReply();
			
			model.addAttribute("goodsReply", goodsReply);
		}
		
		// ��� �Ұ�(���) POST
		@RequestMapping(value = "/shop/allGoodsReply", method = RequestMethod.POST)
		public String postAllReply(GoodsReplyVO goodsReply) throws Exception {
			logger.info("post all reply");
					
			adminService.deleteGoodsReply(goodsReply.getGoodsReplyNumber());
			
			return "redirect:/admin/shop/allGoodsReply";
		}	
		
		
}
