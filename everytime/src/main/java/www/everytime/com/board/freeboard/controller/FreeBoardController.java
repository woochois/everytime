package www.everytime.com.board.freeboard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.freeboard.model.FreeBoard;
import www.everytime.com.board.freeboard.service.FreeBoardService;
import www.everytime.com.board.freeboard.service.PagingBean;
import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;

@Controller
public class FreeBoardController {
	
	@Autowired
	private FreeBoardService fbs;
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping("/freeBoardList")
	public String init() {		
		return "redirect:/freeBoardList/pageNum/1";				
	}
	
	// 게시글 목록
	@RequestMapping("/freeBoardList/pageNum/{pageNum}")
	public String freeBoardList(@PathVariable String pageNum, FreeBoard freeboard, Model model, HttpSession session) throws IOException {

		String id = (String)session.getAttribute("id");
		Member member = ms.select(id);
		
		int rowPerPage = 20;
		// 페이지가 지정되지 않으면 1페이지를 보여줌
		if(pageNum ==null || pageNum.equals("")) {
			pageNum ="1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int total = fbs.getTotal(freeboard);
		int startRow = (currentPage - 1) * rowPerPage;
		int endRow = startRow + rowPerPage -1;
		freeboard.setStartRow(startRow);
		freeboard.setEndRow(endRow);
		List<FreeBoard> freeBoardList = fbs.freeBoardList(freeboard);
		PagingBean pb = new PagingBean(currentPage,rowPerPage,total);
		model.addAttribute("freeBoardList", freeBoardList);
		model.addAttribute("freeboard", freeboard);
		model.addAttribute("pb", pb);
		model.addAttribute("nickname", member.getNickname());
		return "freeBoardList";
	}
	// 게시글 입력
	@RequestMapping("/freeBoardInsertForm/no/{no}/pageNum/{pageNum}")
	public String freeBoardInsertForm(@PathVariable String no, @PathVariable String pageNum, Model model) {
		int fbno = 0;
		if(no != null && no.equals("") && !no.equals("null")) {
			fbno = Integer.parseInt(no);
			FreeBoard freeboard = fbs.select(fbno);
		}
		model.addAttribute("fbno", fbno);
		model.addAttribute("pageNum", pageNum);
		return "freeBoardInsertForm";
	}
	// 게시글 입력 성공여부 alert
	@RequestMapping("/freeBoardInsert")
	public String freeBoardInsert(FreeBoard freeboard, String pageNum, Model model, HttpServletRequest request) {
		int fbno = 0;
		freeboard.setFbno(fbno);
		int result = fbs.insert(freeboard);
		
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "freeBoardInsert";		
	}
	
	// 게시글 입력
	@RequestMapping("insert")
	public String insert(FreeBoard freeboard, Member member,@PathVariable String pageNum, HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		Member mem = ms.select(id);
		model.addAttribute("member", mem);
		model.addAttribute("nickname", member.getNickname());
		
		fbs.insert(freeboard);
		return "redirect:/freeBoardList/pageNum/1";
	}
	// 게시글 상세 내역
	@RequestMapping("/mypage/fbno/{fbno}/pageNum/{pageNum}")
	public String mypage(@PathVariable int fbno, @PathVariable String pageNum, Model model) {
		fbs.updateReadCount(fbno);
		FreeBoard freeboard = fbs.select(fbno);
		model.addAttribute("freeboard", freeboard);
		model.addAttribute("pageNum", pageNum);
		return "mypage";
	}
	
	//게시글 수정
	@RequestMapping("/freeBoardUpdateForm/fbno/{fbno}/pageNum/{pageNum}")
	public String freeBoardUpdateForm(@PathVariable int fbno, @PathVariable String pageNum, Model model) {
		FreeBoard freeboard = fbs.select(fbno);
		model.addAttribute("freeboard", freeboard);
		model.addAttribute("pageNum", pageNum);
		return "freeBoardUpdateForm";
	}
	
	//게시글 수정 성공여부 alert
	@RequestMapping("/freeBoardUpdate")
	public String freeBoardUpdate(FreeBoard freeboard, String pageNum, Model model) {
		int result = fbs.update(freeboard);
		model.addAttribute("result", result);
		model.addAttribute("freeboard", freeboard);
		model.addAttribute("pageNum", pageNum);
		return "freeBoardUpdate";
	}
	
	//게시글 삭제 및 성공 여부
	@RequestMapping("/freeBoardDelete/fbno/{fbno}/pageNum/{pageNum}")
	public String freeBoardDelete(@PathVariable int fbno, @PathVariable String pageNum, Model model) {
		int result = fbs.delete(fbno);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "freeBoardDelete";
	}
	
	// 임의 데이터 입력
	@RequestMapping("/insertFreeBoard")
	public String insertFreeBoard(HttpServletRequest request) {
	
		for (int i =1; i <= 10; i++ ) {
			FreeBoard freeboard= new FreeBoard();
			freeboard.setFtitle("test 제목"+i);
			freeboard.setFnickname("nickname"+ i);
			freeboard.setFcontents("contents"+i);
			
			
			fbs.insert(freeboard);
		}
		return "insertFAQ";
	}
	
}
