package edu.bit.hbly;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bit.hbly.service.ShopService;
import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.MemberVO;
import edu.bit.hbly.vo.OrderDetailsVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;


@Controller
@RequestMapping("/shop/*")
public class ShopController {

 private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
 
 @Inject
 ShopService service;
    
 // 카테고리별 상품 리스트
 @RequestMapping(value = "/list", method = RequestMethod.GET)
 public void getList(@RequestParam("c") int categoryCode,
      @RequestParam("l") int level, Model model) throws Exception {
  logger.info("get llist");
  
  List<GoodsViewVO> list = null;
  list = service.list(categoryCode, level);
 
  model.addAttribute("list", list);
  
 }
 
 
 // 상품 조회
 @RequestMapping(value = "/view", method = RequestMethod.GET)
 public void getView(@RequestParam("n") int goodsNumber,Model model ) throws Exception {
  logger.info("get view");
  
  GoodsViewVO view = service.goodsView(goodsNumber);
  model.addAttribute("view",view);
  
	/* 상품조회 리스트 AJAX 사용전 코드
	 * List<GoodsReplyListVO> goodsReplyList = service.goodsReplyList(goodsNumber);
	 * model.addAttribute("goodsReplyList",goodsReplyList);
	 */
 }
 

	/*
	 * // 상품 조회 -> 소감(댓글) 작성 ajax 사용전
	 * 
	 * @RequestMapping(value = "/view", method = RequestMethod.POST) public String
	 * registerGoodsReply(GoodsReplyVO goodsReply, HttpSession session) throws
	 * Exception { logger.info("register GoodsReply");
	 * 
	 * MemberVO member = (MemberVO)session.getAttribute("member");
	 * goodsReply.setUserId(member.getUserId());
	 * 
	 * service.registerGoodsReply(goodsReply);
	 * 
	 * return "redirect:/shop/view?n=" + goodsReply.getGoodsNumber(); }
	 */
 
 @ResponseBody
 @RequestMapping(value = "/view/registerGoodsReply", method = RequestMethod.POST)
 public void registerGoodsReply(GoodsReplyVO goodsReply, HttpSession session) throws Exception {
  logger.info("register GoodsReply");
  
  MemberVO member = (MemberVO)session.getAttribute("member");
  goodsReply.setUserId(member.getUserId());
  
  service.registerGoodsReply(goodsReply);
 }
 
 // 상품 소감(댓글) 목록
 @ResponseBody
 @RequestMapping(value = "/view/replyList", method = RequestMethod.GET)
 public List<GoodsReplyListVO> getGoodsReplyList(@RequestParam("n") int goodsNumber) throws Exception {
  logger.info("get goodsReply List");
  
  List<GoodsReplyListVO> goodsReplyList = service.goodsReplyList(goodsNumber);
  
  return goodsReplyList;
 }
 
 
 // 상품 소감(댓글) 삭제
 @ResponseBody
 @RequestMapping(value = "/view/deleteGoodsReply", method = RequestMethod.POST)
 public String deleteGoodsReplyList(GoodsReplyVO goodsReply, HttpSession session) throws Exception {
  logger.info("post delete goodsReply");
  
  int result=0;
  
  MemberVO member = (MemberVO)session.getAttribute("member");
  String userId = service.checkGoodsReplyUserId(goodsReply.getGoodsReplyNumber());
  
  if(member.getUserId().equals(userId)) {
	  goodsReply.setUserId(member.getUserId());
	  service.deleteGoodsReply(goodsReply);
	  
	  result=1;
  }
  
  return String.valueOf(result);
 }
 
 
//상품 소감(댓글) 수정
@ResponseBody
@RequestMapping(value = "/view/modifyGoodsReply", method = RequestMethod.POST)
public String modifyGoodsReplyList(GoodsReplyVO goodsReply, HttpSession session) throws Exception {
logger.info("modify goodsReply");

int result=0;

MemberVO member = (MemberVO)session.getAttribute("member");
String userId = service.checkGoodsReplyUserId(goodsReply.getGoodsReplyNumber());

if(member.getUserId().equals(userId)) {
	  goodsReply.setUserId(member.getUserId());
	  service.modifyGoodsReply(goodsReply);
	  
	  result=1;
}
System.out.println(result);
return String.valueOf(result);
}




//카트 담기
@ResponseBody
@RequestMapping(value = "/addCart", method = RequestMethod.POST)
public String addCart(CartListVO cart, HttpSession session) throws Exception {
	logger.info("addCart");

	int result = 0;

	MemberVO member = (MemberVO)session.getAttribute("member");
	
	if(member != null) {
		cart.setUserId(member.getUserId());
		service.addCart(cart);
		result = 1;
	}
	
	return String.valueOf(result);

	}

//카트 목록
@RequestMapping(value = "/cartList", method = RequestMethod.GET)
public void getCartList(HttpSession session,Model model) throws Exception {
	logger.info("get cart list");

	MemberVO member = (MemberVO)session.getAttribute("member");
	String userId = member.getUserId();
	
	List<CartListVO> cartList = service.cartList(userId);
	
	model.addAttribute("cartList", cartList);
	
}


	//카트 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public String deleteCart(HttpSession session, @RequestParam(value ="chbox[]") List<String> chArr,CartVO cart) throws Exception {
		logger.info("delete cart");
	
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		int result = 0;
		int cartNumber = 0;
		
		if(member != null) {
			cart.setUserId(member.getUserId());
	
			for(String i : chArr) {
				cartNumber = Integer.parseInt(i);
				cart.setCartNumber(cartNumber);
				service.deleteCart(cart);
			}
			result= 1;
		}
		return String.valueOf(result);
		}
	
	
	//주문하기
	
	@RequestMapping(value = "/cartList", method = RequestMethod.POST)
	public String order(HttpSession session, OrderVO order, OrderDetailsVO orderDetails) throws Exception {
		logger.info("order");
	
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+ 1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String subNum = "";
		
		for(int i =1; i <=6; i++) {
			subNum += (int)(Math.random() * 10);
		}
		
		String orderId = ymd + "_" + subNum;
		
		order.setOrderId(orderId);
		order.setUserId(userId);
		
		service.orderInfo(order);
		
		orderDetails.setOrderId(orderId);
		service.orderInfo_Details(orderDetails);
		
		service.cartAllDelete(userId);
		
		return "redirect:/shop/orderList";
	}

	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public void getOrderList(HttpSession session, OrderVO order, Model model) throws Exception {
		logger.info("get order list");
	
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		order.setUserId(userId);
		
		List<OrderVO> orderList = service.orderList(order);
		
		model.addAttribute("orderList", orderList);
	}

	
	@RequestMapping(value = "/orderView", method = RequestMethod.GET)
	public void getOrderList(HttpSession session, @RequestParam("n") String orderId,
			OrderVO order, Model model) throws Exception {
		logger.info("get order view");
	
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		order.setUserId(userId);
		order.setOrderId(orderId);
		
		List<OrderListVO> orderView = service.orderView(order);
		
		model.addAttribute("orderView", orderView);
	}
	
}	