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
	public void writeView(HttpServletRequest request, Model model) throws Exception{			
		
		logger.info("writeView : "  + request.getParameter("categoryCode")+request.getParameter("userId"));
		
		String category =  request.getParameter("categoryCode");
		String userId = request.getParameter("userId");
		
		model.addAttribute("categoryCode", category);	
		model.addAttribute("userId", userId);
	}
		
	// 게시판 글 작성
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpServletRequest request, Model model) throws Exception{
		logger.info("write : "   + request.getParameter("categoryCode"));
			
		service.write(boardVO);
		
		String category =  request.getParameter("categoryCode");
		
		model.addAttribute("categoryCode", category);	
		
		return "redirect:/board/list?page=1&categoryCode="+category;
	}
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model,@ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("list");
		logger.info("======="+scri);
		
		model.addAttribute("list",service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
					
	return "board/list";
			
	}

//	// 게시판 수정
//	@RequestMapping(value = "/update", method = RequestMethod.POST)
//	public String update(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
//		logger.info("update");
//			
//		service.update(boardVO);
//		
//		rttr.addAttribute("page", scri.getPage());
//		rttr.addAttribute("perPageNum", scri.getPerPageNum());
//		rttr.addAttribute("searchType", scri.getSearchType());
//		rttr.addAttribute("keyword", scri.getKeyword());
//			
//		return "redirect:/board/list";
//	}
//	
//	// 게시판 삭제
//	@RequestMapping(value = "/delete", method = RequestMethod.POST)
//	public String delete(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
//		logger.info("delete");
//		
//		//service.delete(boardVO.getBoardNumber());			      	
//		
//		rttr.addAttribute("page", scri.getPage());
//		rttr.addAttribute("perPageNum", scri.getPerPageNum());
//		rttr.addAttribute("searchType", scri.getSearchType());
//		rttr.addAttribute("keyword", scri.getKeyword());
//			
//		//return String.valueOf(result);
//		return "redirect:/board/list";
//	}
	
	   //게시판 삭제
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
	          
	          logger.info("삭제 성공");
	          System.out.println(result);
	      }

	      System.out.println(result);
      
      return String.valueOf(result);
	   }
	   
	   //게시판 수정
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
	   
		// 게시판 수정뷰
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
		
		// 게시판 수정
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model,RedirectAttributes rttr) throws Exception{
			logger.info("update");
			
			service.update(boardVO);
			
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
				
			return "redirect:/board/list";
		}
		
	// 게시판 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, HttpServletRequest request, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{		

		logger.info("read");
			
		model.addAttribute("read", service.read(boardVO.getBoardNumber()));
		model.addAttribute("scri", scri);
		
		List<ReplyVO> replyList = replyService.readReply(boardVO.getBoardNumber());
		model.addAttribute("replyList", replyList);
		
		return "board/readView";
	}
	
	//댓글 작성
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
		
		//댓글 삭제
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
	          
	          logger.info("삭제 성공");
	          System.out.println(result);
	      }
  
	      return String.valueOf(result);
	   }
	   
	   		//댓글 수정 check
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
	   		
	   		// 댓글 수정뷰
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
			
			// 댓글 수정
			@RequestMapping(value = "/replyUpdate", method = RequestMethod.POST)
			public String replyUpdate(ReplyVO replyVO, @ModelAttribute("scri") SearchCriteria scri, Model model,RedirectAttributes rttr) throws Exception{
				logger.info("replyUpdate");
				
				logger.info("********************************************");
				
				replyService.updateReply(replyVO);
				
				rttr.addAttribute("page", scri.getPage());
				rttr.addAttribute("perPageNum", scri.getPerPageNum());
				rttr.addAttribute("searchType", scri.getSearchType());
				rttr.addAttribute("keyword", scri.getKeyword());
					
				return "redirect:/board/list";
			}
	 		
	   
			/*
			 * //댓글 수정 GET
			 * 
			 * @RequestMapping(value="/replyUpdateView", method = RequestMethod.GET) public
			 * String replyUpdateView(ReplyVO ReplyVO, SearchCriteria scri, Model model)
			 * throws Exception { logger.info("reply Write");
			 * 
			 * model.addAttribute("replyUpdate",
			 * replyService.selectReply(ReplyVO.getBoardReplyNumber()));
			 * model.addAttribute("scri", scri);
			 * 
			 * return "board/replyUpdateView"; }
			 * 
			 * //댓글 수정 POST
			 * 
			 * @RequestMapping(value="/replyUpdate", method = RequestMethod.POST) public
			 * String replyUpdate(ReplyVO ReplyVO, SearchCriteria scri, RedirectAttributes
			 * rttr) throws Exception { logger.info("reply Write");
			 * 
			 * replyService.updateReply(ReplyVO);
			 * 
			 * rttr.addAttribute("boardNumber", ReplyVO.getBoardNumber());
			 * rttr.addAttribute("userId", ReplyVO.getUserId()); rttr.addAttribute("page",
			 * scri.getPage()); rttr.addAttribute("perPageNum", scri.getPerPageNum());
			 * rttr.addAttribute("searchType", scri.getSearchType());
			 * rttr.addAttribute("keyword", scri.getKeyword());
			 * 
			 * return "redirect:/board/readView"; }
			 */
		/*
		 * //댓글 삭제
		 * 
		 * @RequestMapping(value="/replyDelete", method = RequestMethod.POST) public
		 * String replyDelete(ReplyVO ReplyVO, SearchCriteria scri, RedirectAttributes
		 * rttr) throws Exception { logger.info("reply Write");
		 * 
		 * replyService.deleteReply(ReplyVO);
		 * 
		 * rttr.addAttribute("boardNumber", ReplyVO.getBoardNumber());
		 * rttr.addAttribute("page", scri.getPage()); rttr.addAttribute("perPageNum",
		 * scri.getPerPageNum()); rttr.addAttribute("searchType", scri.getSearchType());
		 * rttr.addAttribute("keyword", scri.getKeyword());
		 * 
		 * return "redirect:/board/readView"; }
		 */
	   
		
		/*
		 * //댓글 삭제 GET
		 * 
		 * @RequestMapping(value="/replyDeleteView", method = RequestMethod.GET) public
		 * String replyDeleteView(ReplyVO ReplyVO, SearchCriteria scri, Model model)
		 * throws Exception { logger.info("reply Write");
		 * 
		 * model.addAttribute("replyDelete",
		 * replyService.selectReply(ReplyVO.getBoardReplyNumber()));
		 * model.addAttribute("scri", scri);
		 * 
		 * return "board/replyDeleteView"; }
		 */


}
