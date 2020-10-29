package edu.bit.hbly;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.bit.hbly.service.BoardService;
import edu.bit.hbly.service.ReplyService;
import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
import edu.bit.hbly.vo.CustomUser;
import edu.bit.hbly.vo.PageMaker;
import edu.bit.hbly.vo.ReplyVO;
import edu.bit.hbly.vo.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardService service;
	
	@Inject
	ReplyService replyService;
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
	public void writeView(BoardVO boardVO, HttpServletRequest request, Model model) throws Exception{			
		
		logger.info("writeView : "  + request.getParameter("categoryCode"));
		
		String category =  request.getParameter("categoryCode");
		String userId = request.getParameter("userId");
		
		model.addAttribute("categoryCode", category);	
		model.addAttribute("userId", userId);
	}
		
	// 게시판 글 작성
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpServletRequest request, Model model) throws Exception{
		logger.info("write : "   + request.getParameter("categoryCode"));
		logger.info("======="+boardVO.getBoardNumber());
		
		service.write(boardVO);
		
		String category =  request.getParameter("categoryCode");
		String bn = request.getParameter("boardNumber");
		
		model.addAttribute("categoryCode", category);
		model.addAttribute("boardNumber", bn);
		
		return "redirect:/board/list";
	}
	
	// 게시판 목록 조회
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String list(Model model,@ModelAttribute("scri") SearchCriteria scri,HttpServletRequest request) throws Exception{
		logger.info("list :" + request.getParameter("categoryCode"));
		logger.info("======="+scri);
		
		model.addAttribute("list",service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		String category =  request.getParameter("categoryCode");
		
		model.addAttribute("categoryCode", category);	
					
	return "board/list";
			
	}

	   //寃뚯떆�뙋 �궘�젣
	   @ResponseBody
	   @RequestMapping(value = "/delete", method = RequestMethod.POST) 
	   public String Delete(BoardVO boardVO, HttpServletRequest request) throws Exception {
	      	      
	   int result = 0;
		 
		 Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		 String username = ((UserDetails)principal).getUsername();
		 String userId = service.boardIdCheck(boardVO.getBoardNumber());
		 
		 String bn = request.getParameter("boardNumber");
		 
		 
		 logger.info("======="+bn);
		 logger.info("======="+boardVO.getBoardNumber());
		 logger.info("username:" + username);
		 logger.info("userid:" + userId);
		
	     if(username.equals(userId)) {
	          
	          boardVO.setUserId(username); 
	          service.delete(boardVO);
	           
	          result = 1;
	          
	          logger.info("�궘�젣 �꽦怨�");
	          System.out.println(result);
	      }

	      System.out.println(result);
      
      return String.valueOf(result);
	   }
	   
	   //寃뚯떆�뙋 �닔�젙
	   @ResponseBody
	   @RequestMapping(value = "/updateCheck", method = RequestMethod.POST) 
	   public String updateCheck(BoardVO boardVO, HttpServletRequest request) throws Exception {
	      	      
		   int result = 0;
		 
		 Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		 String username = ((UserDetails)principal).getUsername();
		 String userId = service.boardIdCheck(boardVO.getBoardNumber());
		 
		 String bn = request.getParameter("boardNumber");
		 
		 
		 logger.info("======="+bn);
		 logger.info("======="+boardVO.getBoardNumber());
		 logger.info("username:" + username);
		 logger.info("userid:" + userId);
		
	     if(username.equals(userId)) {
	          
	          result = 1;
	          
	      }

	      System.out.println(result);
      
      return String.valueOf(result);
	   }
	   
		// 寃뚯떆�뙋 �닔�젙酉�
		@RequestMapping(value = "/updateView", method = RequestMethod.GET)
		public String updateView(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
			logger.info("updateView");
			
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

			String username = ((UserDetails)principal).getUsername();
			String userId = service.boardIdCheck(boardVO.getBoardNumber());
			
			if(!username.equals(userId)) {
				return "board/list";
			}
			
			model.addAttribute("update", service.read(boardVO.getBoardNumber()));
			model.addAttribute("scri", scri);
			
			return "board/updateView";
		}
		
		// 寃뚯떆�뙋 �닔�젙
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, @ModelAttribute("boardNumber") BoardVO boardNumber, Model model,RedirectAttributes rttr) throws Exception{
			
			logger.info("update");
			
			service.update(boardVO);
			
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			rttr.addAttribute("categoryCode", scri.getCategoryCode());
			rttr.addAttribute("boardNumber", boardNumber.getBoardNumber());
				
			return "redirect:/board/readView";
		}
		
	// 寃뚯떆�뙋 議고쉶
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, HttpServletRequest request, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{		

		logger.info("read");
			
		model.addAttribute("read", service.read(boardVO.getBoardNumber()));
		model.addAttribute("scri", scri);
		
		List<ReplyVO> replyList = replyService.readReply(boardVO.getBoardNumber());
		model.addAttribute("replyList", replyList);
		
		return "board/readView";
	}
	
	//�뙎湲� �옉�꽦
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO ReplyVO, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		logger.info("reply Write");
			
		replyService.writeReply(ReplyVO);
			
		rttr.addAttribute("boardNumber", ReplyVO.getBoardNumber());
		rttr.addAttribute("userId", ReplyVO.getUserId());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
			
		return "redirect:/board/readView";
	}
		
		//�뙎湲� �궘�젣
	   @ResponseBody
	   @RequestMapping(value = "/replyDelete", method = RequestMethod.POST) 
	   public String replyDelete(ReplyVO replyVO, HttpServletRequest request) throws Exception {
	      	      
		   int result = 0;
		 
		 Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		 String username = ((UserDetails)principal).getUsername();
		 String userId = replyService.replyIdCheck(replyVO.getBoardReplyNumber());
		 
		 String rbn = request.getParameter("boardReplyNumber");		 
		 
		 logger.info("======="+rbn);
		 logger.info("======="+replyVO.getBoardReplyNumber());
		 
		 logger.info("username:" + username);
		 logger.info("userid:" + userId);
		
	     if(username.equals(userId)) {
	          
	          replyVO.setUserId(username); 
	          replyService.deleteReply(replyVO);
	           
	          result = 1;
	          
	          logger.info("�궘�젣 �꽦怨�");
	          System.out.println(result);
	      }
  
	      return String.valueOf(result);
	   }
	   
	   		//�뙎湲� �닔�젙 check
	   		@ResponseBody
	 		@RequestMapping(value="/replyUpdateCheck", method = RequestMethod.POST)
	 		public String replyUpdate(ReplyVO replyVO, HttpServletRequest request) throws Exception {
	 			
	 		 int result = 0;
	 			 
 			 Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

 			 String username = ((UserDetails)principal).getUsername();
 			 String userId = replyService.replyIdCheck(replyVO.getBoardReplyNumber());
 			 
 			 String rbn = request.getParameter("boardReplyNumber"); 			 
 			 
 			 logger.info("======="+rbn);
 			 logger.info("======="+replyVO.getBoardReplyNumber());
 			 
 			 logger.info("username:" + username);
 			 logger.info("userid:" + userId);
 			
 		     if(username.equals(userId)) {
 		          
 		         result = 1;
 		          
 		     }
 		     	logger.info("=====result="+result);
 		      return String.valueOf(result);
	 		}
	   		
	   		// �뙎湲� �닔�젙酉�
			@RequestMapping(value = "/replyUpdateView", method = RequestMethod.GET)
			public String replyUpdateView(ReplyVO replyVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
				logger.info("replyUpdateView");
				
				Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

				String username = ((UserDetails)principal).getUsername();
				String userId = replyService.replyIdCheck(replyVO.getBoardReplyNumber());
				
				logger.info("username:" + username);
	 			logger.info("userid:" + userId);
				
				if(!username.equals(userId)) {
					return "board/list";
				}
				
				model.addAttribute("update", replyService.selectReply(replyVO.getBoardReplyNumber()));
				model.addAttribute("scri", scri);
				
				return "board/replyUpdateView";
			}
			
			// �뙎湲� �닔�젙
			@RequestMapping(value = "/replyUpdate", method = RequestMethod.POST)
			public String replyUpdate(ReplyVO replyVO,HttpServletRequest request, @ModelAttribute("scri") SearchCriteria scri, Model model,@ModelAttribute("boardReplyNumber") ReplyVO boardReplyNumber, RedirectAttributes rttr) throws Exception{
				
				logger.info("replyUpdate");
				logger.info("==========="+ request.getParameter("boardReplyNumber"));
				logger.info("==========="+ request.getParameter("boardNumber"));
								
				replyService.updateReply(replyVO);
				
				rttr.addAttribute("page", scri.getPage());
				rttr.addAttribute("perPageNum", scri.getPerPageNum());
				rttr.addAttribute("searchType", scri.getSearchType());
				rttr.addAttribute("keyword", scri.getKeyword());
				//rttr.addAttribute("categoryCode", scri.getCategoryCode());
				rttr.addAttribute("boardNumber", replyVO.getBoardNumber());
				//rttr.addAttribute("boardReplyNumber", replyVO.getBoardReplyNumber());
					
				return "redirect:/board/readView";
			}


			/*
			 * @RequestMapping(value = "/replyUpdate", method = RequestMethod.GET) public
			 * String replyUpdate(ReplyVO replyVO, HttpServletRequest request, Model model)
			 * {
			 * 
			 * logger.info("replyUpdate"); logger.info("==========="+
			 * request.getParameter("categoryCode")); logger.info("==========="+
			 * request.getParameter("boardNumber"));
			 * 
			 * model.addAttribute("replyUpdate", replyService.updateReply(replyVO));
			 * 
			 * }
			 */


}
