package www.everytime.com.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("/home")
	public String home() {
		return "everytime";
	}
}
