package edu.bit.hbly;

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


@Controller
@RequestMapping("/shop/*")
public class ShopController {

 private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
 
 @Inject
 ShopService service;
    
 // ī�װ��� ��ǰ ����Ʈ
 @RequestMapping(value = "/list", method = RequestMethod.GET)
 public void getList(@RequestParam("c") int categoryCode,
      @RequestParam("l") int level, Model model) throws Exception {
  logger.info("get llist");
  
  List<GoodsViewVO> list = null;
  list = service.list(categoryCode, level);
 
  model.addAttribute("list", list);
  
 }
 
 
 // ��ǰ ��ȸ
 @RequestMapping(value = "/view", method = RequestMethod.GET)
 public void getView(@RequestParam("n") int goodsNumber,Model model ) throws Exception {
  logger.info("get view");
  
  GoodsViewVO view = service.goodsView(goodsNumber);
  model.addAttribute("view",view);
  
	/* ��ǰ��ȸ ����Ʈ AJAX ����� �ڵ�
	 * List<GoodsReplyListVO> goodsReplyList = service.goodsReplyList(goodsNumber);
	 * model.addAttribute("goodsReplyList",goodsReplyList);
	 */
 }
 

	/*
	 * // ��ǰ ��ȸ -> �Ұ�(���) �ۼ� ajax �����
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
 
 // ��ǰ �Ұ�(���) ���
 @ResponseBody
 @RequestMapping(value = "/view/replyList", method = RequestMethod.GET)
 public List<GoodsReplyListVO> getGoodsReplyList(@RequestParam("n") int goodsNumber) throws Exception {
  logger.info("get goodsReply List");
  
  List<GoodsReplyListVO> goodsReplyList = service.goodsReplyList(goodsNumber);
  
  return goodsReplyList;
 }
 
 
 // ��ǰ �Ұ�(���) ����
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
 
 
//��ǰ �Ұ�(���) ����
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




//īƮ ���
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

//īƮ ���
@RequestMapping(value = "/cartList", method = RequestMethod.GET)
public void getCartList(HttpSession session,Model model) throws Exception {
	logger.info("get cart list");

	MemberVO member = (MemberVO)session.getAttribute("member");
	String userId = member.getUserId();
	
	List<CartListVO> cartList = service.cartList(userId);
	
	model.addAttribute("cartList", cartList);
	
}


//īƮ ����
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



}