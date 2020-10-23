package edu.bit.hbly;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.bit.hbly.service.BoardService;
import edu.bit.hbly.service.ReplyService;
import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
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
	 
	// 寃뚯떆�뙋 湲� �옉�꽦 �솕硫�
	@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
	public void writeView(HttpServletRequest request, Model model) throws Exception{			
		
		logger.info("writeView : "   + request.getParameter("categoryCode"));
		
		String category =  request.getParameter("categoryCode");
		
		model.addAttribute("categoryCode", category);		
	}
		
	// 寃뚯떆�뙋 湲� �옉�꽦
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpServletRequest request, Model model) throws Exception{
		logger.info("write : "   + request.getParameter("categoryCode"));
			
		service.write(boardVO);
		
		String category =  request.getParameter("categoryCode");
		
		model.addAttribute("categoryCode", category);	
		
		return "redirect:/board/list?page=1&categoryCode=${categoryCode}";
	}
	
	// 寃뚯떆�뙋 紐⑸줉 議고쉶
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model,@ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("list");
			
		model.addAttribute("list",service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
					
	return "board/list";
			
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
		
	// 寃뚯떆�뙋 �닔�젙酉�
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("updateView");
			
		model.addAttribute("update", service.read(boardVO.getBoardNumber()));
		model.addAttribute("scri", scri);
		
		return "board/updateView";
	}
	
	// 寃뚯떆�뙋 �닔�젙
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("update");
			
		service.update(boardVO);
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
			
		return "redirect:/board/list";
	}
	
	// 寃뚯떆�뙋 �궘�젣
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("delete");
		
		service.delete(boardVO.getBoardNumber());
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
			
		return "redirect:/board/list";
	}
	
	//�뙎湲� �옉�꽦
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO ReplyVO, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
			
		replyService.writeReply(ReplyVO);
			
		rttr.addAttribute("boardNumber", ReplyVO.getBoardNumber());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
			
		return "redirect:/board/readView";
	}
	
	//�뙎湲� �닔�젙 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(ReplyVO ReplyVO, SearchCriteria scri, Model model) throws Exception {
		logger.info("reply Write");
			
		model.addAttribute("replyUpdate", replyService.selectReply(ReplyVO.getBoardReplyNumber()));
		model.addAttribute("scri", scri);
			
		return "board/replyUpdateView";
	}
		
	//�뙎湲� �닔�젙 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO ReplyVO, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
			
		replyService.updateReply(ReplyVO);
			
		rttr.addAttribute("boardNumber", ReplyVO.getBoardNumber());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
			
		return "redirect:/board/readView";
	}
		
	//�뙎湲� �궘�젣 GET
	@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(ReplyVO ReplyVO, SearchCriteria scri, Model model) throws Exception {
		logger.info("reply Write");
			
		model.addAttribute("replyDelete", replyService.selectReply(ReplyVO.getBoardReplyNumber()));
		model.addAttribute("scri", scri);
			
		return "board/replyDeleteView";
	}
		
	//�뙎湲� �궘�젣
	@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
	public String replyDelete(ReplyVO ReplyVO, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
	
		replyService.deleteReply(ReplyVO);
			
		rttr.addAttribute("boardNumber", ReplyVO.getBoardNumber());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
			
		return "redirect:/board/readView";
	}
	
	
	
}
