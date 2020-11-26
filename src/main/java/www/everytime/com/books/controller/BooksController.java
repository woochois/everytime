package www.everytime.com.books.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.books.model.Book;
import www.everytime.com.books.service.BookService;
import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;

@Controller
public class BooksController {


	@Autowired
	private BookService bs;
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping("/books")
	public String books(Book book, Model model) {

		List<Book> booklist = bs.selectList(book);

		model.addAttribute("booklist", booklist);
		return "books";
	}

	@RequestMapping("/booksell")
	public String booksell() {
		return "booksell";
	}

	@RequestMapping("/bookSellForm")
	public String bookSellForm(Book book, Model model, HttpSession session) {
		// API 데이터 넣어주기
		bs.insert(book);
		
		// 멤버 닉네임 받아오기
		String id = (String)session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		
		// 데이터 가져오기
		List<Book> booklist = bs.selectList(book);
		model.addAttribute("booklist", booklist);
		
		return "bookSellForm";
	}	
}
