package www.everytime.com.message.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;
import www.everytime.com.message.model.Message;
import www.everytime.com.message.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	private MemberService ms;
	
	@Autowired
	private MessageService msgs;

	@RequestMapping("/sendmessagePopup")
	public String sendmessagePopup(Model model, Message message, HttpSession session) {

		String id = (String) session.getAttribute("id");

		Member member = ms.select(id);
		
		model.addAttribute("member", member);

		return "sendmessagePopup";
	}

	@RequestMapping("/msgSuccess")
	public String msgSuccess(Message message, Model model, HttpSession session) throws IOException {

		String nickname = (String) session.getAttribute("nickname");

		Member member = ms.select(nickname);
		
		int result = 0;
		result = msgs.insert(message);
		
		model.addAttribute("result", result);
		model.addAttribute("message", message);
		model.addAttribute("member", member);
		return "msgSuccess";
	}

	@RequestMapping("/my_receivedMail")
	public String my_receivedMail(Message message, Model model, HttpSession session) {
		
		String id = (String) session.getAttribute("id");

		Member member = ms.select(id);
		
		message.setM_receiver_nick(member.getNickname());
		
		List<Message> reclist = msgs.reclist(message);
		model.addAttribute("reclist", reclist);
		
		return "my_receivedMail";
	}

	@RequestMapping("/sendMail")
	public String sendMail(Message message, Model model, HttpSession session) {

		String id = (String) session.getAttribute("id");

		Member member = ms.select(id);
		
		message.setM_receiver_nick(member.getNickname());
		
		List<Message> sendlist = msgs.sendlist(message);
		model.addAttribute("sendlist", sendlist);

		return "sendMail";
	}

	// 보낸메일삭제
	@RequestMapping("/rDelete")
	public String rDelete(Message message) {
		System.out.println("delete 불러옴");
		msgs.delete(message.getM_num());
		return "redirect:/sendMail";
	}

	// 받은메일삭제
	@RequestMapping("/rDelete2")
	public String rDelete2(Message message) {
		System.out.println("delete 불러옴");
		msgs.delete2(message.getM_num());
		return "redirect:/my_receivedMail";
	}
}
