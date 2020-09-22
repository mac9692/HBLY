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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import edu.bit.hbly.service.AdminService;
import edu.bit.hbly.utils.UploadFileUtils;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;
import net.sf.json.JSONArray;




@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService adminService;
	
	
	//Servlet-context에서 설정한 uploadPath
	@Resource(name="uploadPath")
	private String uploadPath;
	
	//관리자페이지 메인
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void getIndex() throws Exception{
		logger.info("get index");
	}
	
	
	//ck 에디터에서 파일 업로드
		@RequestMapping(value = "/goods/ckUpload", method = RequestMethod.POST)
		public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload ) throws Exception{
			logger.info("post CKEditor img upload");
			
			
			//랜덤 문자 생성
			 UUID uid = UUID.randomUUID();
			 
			 OutputStream out = null;
			 PrintWriter printWriter = null;
			   
			 //인코딩
			 res.setCharacterEncoding("utf-8");
			 res.setContentType("text/html;charset=utf-8");
			 
			 try {
			  
			  String fileName = upload.getOriginalFilename();  //파일 이름 가져오기
			  byte[] bytes = upload.getBytes();
			  
			  //업로드 경로
			  String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
			  
			  out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			  out.flush();  // out에 저장된 데이터를 전송하고 초기화
			  
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
			  String fileUrl = "/ckUpload/" + uid + "_" + fileName;  //작성화면
			  
			  // 업로드시 메시지 출력
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
		
	
	
	//상품 등록 GET
	@RequestMapping(value = "/goods/register", method = RequestMethod.GET)
	public void getGoodsRegister(Model model) throws Exception {
	 logger.info("get goods register");
	 
	 List<CategoryVO> category = null;
	 category = adminService.category();
	 model.addAttribute("category", JSONArray.fromObject(category));
	}
	
	//상품 등록 POST
	@RequestMapping(value = "/goods/register", method = RequestMethod.POST)
	public String postGoodsRegister(GoodsVO vo, MultipartFile file) throws Exception {
	logger.info("post goods register");
	 
	String imgUploadPath = uploadPath + File.separator + "imgUpload";
	String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
	String fileName = null;

	if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
	 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
	} else {
	 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
	}

	vo.setGoodsImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
	vo.setGoodsThumbImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
	
	adminService.register(vo);
		
	return "redirect:/admin/index";
	}
	
	
	
	
	
	
	//?긽?뭹 紐⑸줉
	@RequestMapping(value = "/goods/list", method = RequestMethod.GET)
	public void getGoodsList(Model model) throws Exception{
		logger.info("get goods list");
		
		List<GoodsVO> list = adminService.goodslist();
		model.addAttribute("list", list);
	}
	
	//?긽?뭹 議고쉶
	@RequestMapping(value = "/goods/view", method = RequestMethod.GET)
	public void getGoodsview(@RequestParam("n") int goodsNumber, Model model) throws Exception{
		logger.info("get goods view");
		
		GoodsViewVO goods = adminService.goodsView(goodsNumber);
		
		model.addAttribute("goods",goods);
	}
	
	    //?긽?뭹 ?닔?젙GET
		@RequestMapping(value = "/goods/modify", method = RequestMethod.GET)
		public void getGoodsModify(@RequestParam("n") int goodsNumber, Model model) throws Exception {
		 logger.info("get goods modify");
		 
		 GoodsViewVO goods = adminService.goodsView(goodsNumber);
		 model.addAttribute("goods",goods);
		 
		 List<CategoryVO> category = null;
		 category = adminService.category();
		 model.addAttribute("category", JSONArray.fromObject(category));
		}
		
		// ?긽?뭹 ?닔?젙POST
		@RequestMapping(value = "/goods/modify", method = RequestMethod.POST)
		public String postGoodsModify(GoodsVO vo, MultipartFile file, HttpServletRequest req) throws Exception {
		 logger.info("post goods modify");
		 
		// ?깉濡쒖슫 ?뙆?씪?씠 ?벑濡앸릺?뿀?뒗吏? ?솗?씤
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // 湲곗〈 ?뙆?씪?쓣 ?궘?젣
		  new File(uploadPath + req.getParameter("goodsImage")).delete();
		  new File(uploadPath + req.getParameter("goodsThumbImage")).delete();
		  
		  // ?깉濡? 泥⑤??븳 ?뙆?씪?쓣 ?벑濡?
		  String imgUploadPath = uploadPath + File.separator + "imgUpload";
		  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		  
		  vo.setGoodsImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  vo.setGoodsThumbImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // ?깉濡쒖슫 ?뙆?씪?씠 ?벑濡앸릺吏? ?븡?븯?떎硫?
		  // 湲곗〈 ?씠誘몄?瑜? 洹몃?濡? ?궗?슜
		  vo.setGoodsImage(req.getParameter("goodsImage"));
		  vo.setGoodsThumbImage(req.getParameter("goodsThumbImage"));
		  
		 }
		 
		 
		 adminService.goodsModify(vo);
		 
		 return "redirect:/admin/index";
		}
		
		// ?긽?뭹 ?궘?젣POST
		@RequestMapping(value = "/goods/delete", method = RequestMethod.POST)
		public String postGoodsDelete(@RequestParam("n") int goodsNumber) throws Exception {
		logger.info("post goods delete");

		adminService.goodsDelete(goodsNumber);
				 
		return "redirect:/admin/index";
		}
		
		
		
		
		
}
