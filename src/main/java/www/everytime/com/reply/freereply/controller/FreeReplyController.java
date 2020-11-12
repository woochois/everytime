package www.everytime.com.reply.freereply.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.freeboard.model.FreeBoard;
import www.everytime.com.board.freeboard.service.FreeBoardService;
import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;
import www.everytime.com.reply.freereply.model.FreeReply;
import www.everytime.com.reply.freereply.service.FreeReplyService;

@Controller
public class FreeReplyController {
	@Autowired
	private FreeReplyService frs;
	@Autowired
	private FreeBoardService fbs;
	@Autowired
	private MemberService ms;

	@RequestMapping("/freeReplyList/fbno/{fbno}/pageNum/{pageNum}")
	public String freeReplyList(@PathVariable int fbno,@PathVariable String pageNum, Model model, FreeReply freereply,
			HttpSession session) {
		String id = (String) session.getAttribute("id");
		Member member = ms.select(id);
		// 페이지가 지정되지 않으면 1페이지를 보여줘라
		if (pageNum==null || pageNum.equals(""))
			pageNum="1";
		FreeBoard freeboard = fbs.select(fbno);
		freereply.setFrbno(fbno);
		List<FreeReply> frList = frs.list(freereply);

		model.addAttribute("member", member);
		model.addAttribute("freeboard", freeboard);
		model.addAttribute("frList", frList);
		model.addAttribute("pageNum", pageNum);
		return "freeReplyList";
	}

	@RequestMapping("frInsert")
	public String rInsert(FreeReply freereply, String pageNum) {
		frs.insert(freereply);
		return "redirect:/freeReplyList/fbno/" + freereply.getFrbno() + "/pageNum/" + pageNum;
	}

	@RequestMapping("/freeReplyDelete/frbno/{frbno}/frrno/{frrno}/pageNum/{pageNum}")
	public String freeReplyDelete(@PathVariable int frrno, @PathVariable int frbno, @PathVariable String pageNum,
			Model model) {
		int result = frs.delete(frrno);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "freeReplyDelete";
	}

	@RequestMapping("frDelete")
	public String rDelete(FreeReply freereply, String pageNum) {
		frs.delete(freereply.getFrrno());
		return "redirect:/freeReplyList/fbno/" + freereply.getFrbno() + "/pageNum/" + pageNum;
	}

}
