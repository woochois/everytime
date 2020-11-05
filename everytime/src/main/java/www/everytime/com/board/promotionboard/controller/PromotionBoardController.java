package www.everytime.com.board.promotionboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.promotionboard.service.PromotionBoardService;

@Controller
public class PromotionBoardController {
	@Autowired
	private PromotionBoardService pbs;
	
	@RequestMapping("/promotionboard")
	public String promotionboard() {
		return "promotionboard";
	}
}
