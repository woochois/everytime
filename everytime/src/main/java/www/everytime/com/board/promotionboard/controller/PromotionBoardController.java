package www.everytime.com.board.promotionboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.promotionboard.model.PromotionBoard;
import www.everytime.com.board.promotionboard.service.PagingBean;
import www.everytime.com.board.promotionboard.service.PromotionBoardService;

@Controller
@RequestMapping("/board/*")
public class PromotionBoardController {
	
	@Autowired
	private PromotionBoardService pbs;
	
	@RequestMapping("promotionboard")
	public String promotionboard(PromotionBoard board, String pageNum, Model model) {
		int rowPerPage = 20;
		// 페이지가 지정되지 않으면 1페이지를 보여줘라
		if (pageNum == null || pageNum.equals(""))
			pageNum = "1";

		int currentPage = Integer.parseInt(pageNum);
		int total = pbs.getTotal(board);
		int startRow = (currentPage - 1) * rowPerPage;
		int endRow = startRow + rowPerPage;
		
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		List<PromotionBoard> list = pbs.list(board);
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] tit = {"작성자", "제목", "내용", "제목+내용"};
		model.addAttribute("tit", tit);
		model.addAttribute("list", list);
		model.addAttribute("PromotionBoard", board);
		model.addAttribute("pb", pb);
		return "promotionboard";
	}


	@RequestMapping("insertBoard")
	public String insertBoard(PromotionBoard board, String pageNum, Model model, HttpServletRequest request) {
		int pbno = pbs.maxPbno(); // num값
		board.setPbno(pbno);
		int result = pbs.insert(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "insertBoard";
	}

	@RequestMapping("viewBoard")
	public String viewBoard(int pbno, String pageNum, Model model) {
		pbs.updateReadCount(pbno);
		PromotionBoard board = pbs.select(pbno);
		System.out.println(pbno + "," + board);
		model.addAttribute("PromotionBoard", board);
		model.addAttribute("pageNum", pageNum);
		return "viewBoard";
	}

	@RequestMapping("updateForm")
	public String updateForm(int pbno, String pageNum, Model model) {
		PromotionBoard board = pbs.select(pbno);
		model.addAttribute("PromotionBoard", board);
		model.addAttribute("pageNum", pageNum);
		return "updateForm";
	}

	@RequestMapping("updateBoard")
	public String updateBoard(PromotionBoard board, String pageNum, Model model) {
		int result = pbs.update(board);
		model.addAttribute("result", result);
		model.addAttribute("PromotionBoard", board);
		model.addAttribute("pageNum", pageNum);
		return "updateBoard";
	}

	@RequestMapping("deleteForm")
	public String deleteForm(int pbno, String pageNum, Model model) {
		PromotionBoard board = pbs.select(pbno);
		model.addAttribute("PromotionBoard", board);
		model.addAttribute("pageNum", pageNum);
		return "deleteForm";
	}

	@RequestMapping("deleteBoard")
	public String deleteBoard(int pbno, String pageNum, Model model) {
		int result = pbs.delete(pbno);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "deleteBoard";
	}
}
