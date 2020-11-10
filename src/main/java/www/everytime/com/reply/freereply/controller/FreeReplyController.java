package www.everytime.com.reply.freereply.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.reply.freereply.service.FreeReplyService;

@Controller
public class FreeReplyController {
	@Autowired
	private FreeReplyService frs;
}
