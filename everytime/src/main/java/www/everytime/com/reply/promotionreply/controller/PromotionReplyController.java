package www.everytime.com.reply.promotionreply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.promotionboard.model.PromotionBoard;
import www.everytime.com.board.promotionboard.service.PromotionBoardService;
import www.everytime.com.reply.promotionreply.model.PromotionReply;
import www.everytime.com.reply.promotionreply.service.PromotionReplyService;

@Controller
@RequestMapping("/reply/*")
public class PromotionReplyController {

	
	@Autowired
	private PromotionBoardService pbs;
	
	@Autowired
	private PromotionReplyService prs;
	
	@RequestMapping("promotionreply")
	public String promotionreply() {
		return "promotionreply";
	}
	
	@RequestMapping("replyList/pbno/{pbno}")
	public String replyList(@PathVariable int pbno, Model model) {
		PromotionBoard board = pbs.select(pbno);
		List<PromotionReply> prList = prs.list(pbno);
		model.addAttribute("board", board);
		model.addAttribute("prList", prList);
		return "replyList";
	}
	
	@RequestMapping("rInsert")
	public String rInsert(PromotionReply pr) {
		prs.insert(pr);
		return "redirect:/replyList/pbno/" + pr.getPbno();
	}
	
	@RequestMapping("rDelete")
	public String rDelete(PromotionReply pr) {
		prs.delete(pr.getPrno());
		return "redirect:/replyList/pbno/" + pr.getPbno();
	}
	
	@RequestMapping("rUpdate")
	public String rUpdate(PromotionReply pr) {
		prs.update(pr);
		return "redirect:/replyList/pbno/" + pr.getPbno();
	}
	
}
