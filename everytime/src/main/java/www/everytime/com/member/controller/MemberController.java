package www.everytime.com.member.controller;

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
	
	@RequestMapping("/user/login")
	public String loginForm(Member member, Model model, HttpSession session) {
		int result = 0;
		Member mem = ms.select(member.getId());
		if(mem == null || mem.isDel() == true) {
			result = -1; // 없는 ID
		} else if (mem.getPassword().equals(member.getPassword())) {
			result =1; // 성공
			session.setAttribute("id", member.getId());
			session.setAttribute("nickname", member.getNickname());
		}
	
		model.addAttribute("result", result);
		return "/user/login";
	}
	
	@RequestMapping("/user/loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}
	
	@RequestMapping("/user/register")
	public String register(Member member, Model model, HttpSession session) {
		int result = 0;
		Member mem = ms.select(member.getId());
		if(mem == null) {
			result = ms.insert(member);
		} else {
			result = -1;
		}
		model.addAttribute("result", result);
		return "/user/register";
	}
	
	@RequestMapping("/user/registerForm")
	public String registerForm() {
		return "/user/registerForm";
	}
	
	@RequestMapping(value="idChk",produces="text/html; charset=utf-8")
	@ResponseBody  // jsp프로그램을 이용하지 않고 바로 본문을 전달
	public String idChk(String id) {
		String msg = "";
		Member member = ms.select(id);
		if (member == null) msg="사용가능한 ID입니다"; 
		else msg="이미 있으니 다른 ID를 사용하시오";
		return msg;
	}
	
	@RequestMapping("/user/updateForm")
	public String updateForm(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "/user/updateForm";
	}
	
	@RequestMapping("/user/update")
	public String update(Member member, Model model, HttpSession session) {
		return "/user/update";
	}
	
	@RequestMapping("/user/mypage")
	public String view(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "/user/mypage";
	}
	
	@RequestMapping("/user/delete")
	public String delete(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		int result = ms.delete(id);
		if(result >0) session.invalidate();
		model.addAttribute("result", result);		
		return "/user/delete";
	}
	
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/user/logout";
	}
}
