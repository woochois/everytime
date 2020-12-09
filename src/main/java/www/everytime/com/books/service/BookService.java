package www.everytime.com.books.service;



import java.util.List;

import org.springframework.stereotype.Service;

import www.everytime.com.books.model.Book;
import www.everytime.com.books.model.BookSell;
import www.everytime.com.books.model.BookTotal;

@Service
public interface BookService {

	void insert(Book book);

	void listinsert(BookSell booksell);

	void fileinsert(String saveFile);

	int imagesupdate(BookSell booksell);

	List<Book> selectBookList(Book book);

	List<BookTotal> selectBookSellList();


}
