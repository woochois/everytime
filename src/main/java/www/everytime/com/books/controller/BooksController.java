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
public class BooksController {

	@Autowired
	private BookService bs;

	@Autowired
	private MemberService ms;

	@RequestMapping("/books")
	public String books() {
		return "books";
	}

	@RequestMapping("/bookSell")
	public String bookSell() {
		return "bookSell";
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

		return "bookSellForm";
	}

	@RequestMapping("/upload")
	public String upload(MultipartHttpServletRequest mtfRequest, BookSell booksell, Model model) {

		bs.listinsert(booksell);

		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		
		String path = "/Users/Hot_George/Documents/fileupload/";

		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			String saveFile = path + System.currentTimeMillis() + originFileName;
			model.addAttribute("saveFile", System.currentTimeMillis() + originFileName);
			try {
				mf.transferTo(new File(saveFile));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "upload";

	}
}