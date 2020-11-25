package www.everytime.com.books.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.books.model.Book;
import www.everytime.com.books.service.BookService;

@Controller
public class BooksController {


	@Autowired
	private BookService bs;
	
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
	public String bookSellForm(Book book) {
		bs.insert(book);
		return "books";
	}	
}
