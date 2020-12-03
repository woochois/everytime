package www.everytime.com.books.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import www.everytime.com.books.model.Book;
import www.everytime.com.books.model.BookSell;
import www.everytime.com.books.service.BookService;
import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;

@Controller
@RequestMapping("/books/*")
public class BooksController {

	private static final int RESULT_EXCEED_SIZE = -2;
	private static final int RESULT_UNACCEPTED_EXTENSION = -1;
	private static final int RESULT_SUCCESS = 1;
	private static final long LIMIT_SIZE = 10 * 1024 * 1024;

	@Autowired
	private BookService bs;

	@Autowired
	private MemberService ms;

	@RequestMapping("/books")
	public String books() {
		return "/books/books";
	}

	@RequestMapping("/bookSell")
	public String bookSell() {
		return "/books/bookSell";
	}

	@RequestMapping("/bookSellForm")
	public String bookSellForm(Book book, Model model, HttpSession session) {
		// API 데이터 넣어주기
		bs.insert(book);

		// 멤버 닉네임 받아오기
		String id = (String) session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);

		// 데이터 가져오기
		List<Book> booklist = bs.selectList(book);

		model.addAttribute("booklist", booklist);

		return "/books/bookSellForm";
	}

	@RequestMapping("/upload")
	public String upload(MultipartHttpServletRequest request, BookSell booksell)
			throws IllegalStateException, IOException {

		bs.listinsert(booksell);

		MultipartFile mf = request.getFile("imgfile1");
		
		String path = "/Users/Hot_George/Documents/fileupload/";

		String originalName = mf.getOriginalFilename();
		String saveFile = path + System.currentTimeMillis() + originalName;
		
		mf.transferTo(new File(saveFile));

		return "/books/upload";
	}
}