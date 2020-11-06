package www.everytime.com.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/registerChk")
	public String registerChk(Member member,Model model){
		int result = 0;
		Member mem = ms.select(member.getId());
		if (mem == null) {
			result = ms.insert(member);
		} else result = -1;
		model.addAttribute("result", result);
		return "registerChk";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "logout";
	}
	
	@RequestMapping("/user")
	public String user(Member member, Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", ms.select(id));
		model.addAttribute("nickname", ms.select(member.getNickname()));
		return "user";
	}
	
	@RequestMapping("delete")
	public String delete(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		int result  = ms.delete(id);
		if (result >0 ) session.invalidate();
		model.addAttribute("result", result);
		return "delete";
	}
	
	@RequestMapping("update")
	public String update(Member member,Model model){
		int result = ms.update(member);
		model.addAttribute("result", result);
		return "update";
	}
//	
//	@RequestMapping("view")
//	public String view(Model model, HttpSession session) {
//		String id = (String)session.getAttribute("id");
//		Member member = ms.select(id);
//		model.addAttribute("member", member);
//		return "view";
//	}
	
	
}
