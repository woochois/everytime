package www.everytime.com.books.dao;

import java.util.List;

import www.everytime.com.books.model.Book;
import www.everytime.com.books.model.BookSell;
import www.everytime.com.books.model.BookTotal;

public interface BookDao {

	void insert(Book book);

	void listinsert(BookSell booksell);

	void fileinsert(String saveFile);

	int imagesupdate(BookSell booksell);

	List<Book> selectBookList(Book book);

	List<BookTotal> selectBookSellList();

}
