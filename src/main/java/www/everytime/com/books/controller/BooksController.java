package www.everytime.com.books.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import www.everytime.com.books.model.Book;
import www.everytime.com.books.model.BookSell;
import www.everytime.com.books.model.BookTotal;
import www.everytime.com.books.service.BookService;
import www.everytime.com.member.model.Member;
import www.everytime.com.member.service.MemberService;

@Controller
@RequestMapping("/books/*")
public class BooksController {

	@Autowired
	private BookService bs;

	@Autowired
	private MemberService ms;

	@RequestMapping("/books")
	public String books(Book book, Model model) {
		
		List<Book> booklist1 = bs.selectBookList(book);
		List<BookTotal> bookSellList = bs.selectBookSellList();
		
		model.addAttribute("booklist1", booklist1);
		model.addAttribute("bookSellList", bookSellList);
		
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
		List<Book> booklist = bs.selectBookList(book);

		model.addAttribute("booklist", booklist);

		return "/books/bookSellForm";
	}

	@RequestMapping("/upload")
	public String upload(@ModelAttribute("book") BookSell booksell, MultipartHttpServletRequest request,
			@RequestParam("file") MultipartFile[] file) throws Exception {
		bs.listinsert(booksell);

		String uploadPath = "/Users/Hot_George/Documents/fileupload/";
		String fileOriginName = "";
		String fileMultiName = "";
		for (int i = 0; i < file.length; i++) {
			fileOriginName = file[i].getOriginalFilename();

			System.out.println("기존 파일명 : " + fileOriginName);

			// 랜덤 문자 생성
			UUID uid = UUID.randomUUID();
			String fileName = (uid + "_" + fileOriginName);
			System.out.println("변경된 파일명 : " + fileName);
			if (file[i].isEmpty() == false) {
				File f = new File(uploadPath + fileName);
				file[i].transferTo(f);
			} else {
				uploadPath = "";
				fileName = "";
			}

			if (i == 0) {
				fileMultiName += fileName;
				booksell.setImages(uploadPath + fileMultiName);
			} else {
				fileMultiName += "," + uploadPath + fileName;
				booksell.setImages(uploadPath + fileMultiName);
			}
		}

		System.out.println("*" + fileMultiName);

		return "/books/upload";
	}

	@RequestMapping("/imageNameUpdate")
	public String imageNameUpdate(BookSell booksell, Model model) {
		int result = bs.imagesupdate(booksell);
		model.addAttribute("result", result);
		return "/books/imageNameUpdate";
	}
}
