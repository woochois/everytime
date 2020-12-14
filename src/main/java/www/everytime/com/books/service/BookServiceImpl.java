package www.everytime.com.books.service;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.everytime.com.books.dao.BookDao;
import www.everytime.com.books.model.Book;
import www.everytime.com.books.model.BookSell;
import www.everytime.com.books.model.BookTotal;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	private BookDao bd;
	
	public void insert(Book book) {
		bd.insert(book);
	}

	public void listinsert(BookSell booksell) {
		bd.listinsert(booksell);
	}

	public void fileinsert(String saveFile) {
		bd.fileinsert(saveFile);
		
	}

	public int imagesupdate(BookSell booksell) {
		return bd.imagesupdate(booksell);
	}

	public List<Book> selectBookList(Book book) {
		return bd.selectBookList(book);
	}

	public List<Map<Book, BookTotal>> selectBookSellList(BookTotal booktotal) {
		return bd.selectBookSellList(booktotal);
	}

}
