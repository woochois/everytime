package www.everytime.com.reply.freereply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.freeboard.model.FreeBoard;
import www.everytime.com.board.freeboard.service.FreeBoardService;
import www.everytime.com.member.service.MemberService;
import www.everytime.com.reply.freereply.model.FreeReply;
import www.everytime.com.reply.freereply.service.FreeReplyService;

@Controller
public class FreeReplyController {
	@Autowired
	private FreeReplyService frs;
	@Autowired
	private FreeBoardService fbs;

	@RequestMapping("/freeReplyList/fbno/{fbno}")
	public String freeReplyList(@PathVariable int fbno, String pageNum, FreeReply freereply, Model model) {

		freereply.setFrbno(fbno);
		FreeBoard freeboard = fbs.select(fbno);
		List<FreeReply> frList = frs.list(freereply);

		model.addAttribute("freeboard", freeboard);
		model.addAttribute("frList", frList);
		model.addAttribute("pageNum", pageNum);
		return "freeReplyList";
	}

	@RequestMapping("frInsert")
	public String frInsert(FreeReply freereply, String pageNum) {
		if (pageNum == null || pageNum.equals(""))
			pageNum = "1";
		frs.insert(freereply);
		return "redirect:/freeBoardListView/fbno/" + freereply.getFrbno() + "/pageNum/" + pageNum;
	}

	@RequestMapping("/freeReplyDelete/frrno/{frrno}/pageNum/{pageNum}")
	public String frDelete(FreeReply freereply) {
		frs.delete(freereply);
		return "redirect:/freeReplyList/fbno/" + freereply.getFrbno();
	}

}