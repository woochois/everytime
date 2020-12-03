package www.everytime.com.books.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String upload(@RequestParam("file") MultipartFile mf, BookSell booksell, Model model, HttpSession session,
			HttpServletRequest req, HttpServletResponse res) throws IOException {

		bs.listinsert(booksell);

		// 랜덤 문자 생성
		UUID uid = UUID.randomUUID();

		OutputStream out = null;
		PrintWriter printWriter = null;
		String uploadPath = "C:\\sh";
		// 인코딩
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");

		String fileName = mf.getOriginalFilename(); // 파일 이름 가져오기

		// 업로드 경로
		String UploadPath = uploadPath + File.separator + uid + "_" + fileName;

		out = new FileOutputStream(new File(UploadPath));
		out.flush();
		// out에 저장된 데이터를 전송하고 초기화

		printWriter = res.getWriter();

		String fileUrl = uploadPath + uid + "_" + fileName;
		// 작성화면

		printWriter.println("{\"filename\" : \"" + fileName + "\", \"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");

		printWriter.flush();

		model.addAttribute("fileurl", fileUrl);

		return "/books/upload";
	}
}
