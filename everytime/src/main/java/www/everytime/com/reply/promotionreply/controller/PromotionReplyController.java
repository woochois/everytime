package www.everytime.com.reply.promotionreply.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.reply.promotionreply.service.PromotionReplyService;

@Controller
public class PromotionReplyController {
	@Autowired
	private PromotionReplyService prs;
	
	@RequestMapping("/promotionreply")
	public String promotionreply() {
		return "promotionreply";
	}
}
