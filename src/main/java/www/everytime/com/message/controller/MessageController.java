package www.everytime.com.message.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.board.freeboard.service.PagingBean;
import www.everytime.com.message.model.Message;
import www.everytime.com.message.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	private MessageService msgs;

	@RequestMapping("/sendmessagePopup")
	public String sendmessagePopup(Message message, HttpSession session) {

		String id = (String) session.getAttribute("id");
		message.setM_sender_id(id);

		String nickname = (String) session.getAttribute("nickname");
		message.setM_sender_nick(nickname);

		return "sendmessagePopup";
	}

	@RequestMapping("/msgSuccess")
	public String msgSuccess(Message message, Model model, HttpSession session) throws IOException {

		String id = (String) session.getAttribute("id");
		message.setM_sender_id(id);

		String nickname = (String) session.getAttribute("nickname");
		message.setM_sender_nick(nickname);

		int result = 0;
		result = msgs.insert(message);

		model.addAttribute("result", result);
		model.addAttribute("message", message);
		return "msgSuccess";
	}

	@RequestMapping("/my_receivedMail")
	public String my_receivedMail(String pageNum, Message message, Model model, HttpSession session) {

		int rowPerPage = 5;

		// 페이지가 지정되지 않으면 1페이지를 보여줘라
		if (pageNum == null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int total = msgs.getTotal_r(message); // 받은쪽지 토탈
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		message.setStartRow(startRow);
		message.setEndRow(endRow);

		PagingBean pbm = new PagingBean(currentPage, rowPerPage, total); // 보낸쪽지

		String id = (String) session.getAttribute("id");
		message.setM_receiver_id(id);

		String nickname = (String) session.getAttribute("nickname");
		message.setM_receiver_nick(nickname);
	
		List<Message> reclist = msgs.reclist(message); // 받은쪽지 리스트

		model.addAttribute("reclist", reclist);
		model.addAttribute("pbm", pbm); // 보낸쪽지

		return "my_receivedMail";
	}

	@RequestMapping("/sendMail")
	public String sendMail(String pageNum, Message message, Model model, HttpSession session) {

		int rowPerPage = 5;
		// 페이지가 지정되지 않으면 1페이지를 보여줘라
		if (pageNum == null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int total = msgs.getTotal(message); // 보낸쪽지 토탈
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		message.setStartRow(startRow);
		message.setEndRow(endRow);

		PagingBean pbm = new PagingBean(currentPage, rowPerPage, total); // 보낸쪽지

		String id = (String) session.getAttribute("id");
		message.setM_sender_id(id);

		String nickname = (String) session.getAttribute("nickname");
		message.setM_sender_nick(nickname);

		List<Message> sendlist = msgs.sendlist(message); // 보낸쪽지 리스트

		model.addAttribute("sendlist", sendlist);
		model.addAttribute("pbm", pbm); // 보낸쪽지

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
