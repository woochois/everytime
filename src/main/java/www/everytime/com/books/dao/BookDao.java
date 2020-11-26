package www.everytime.com.books.dao;

import java.util.List;

import www.everytime.com.books.model.Book;

public interface BookDao {

	void insert(Book book);

	List<Book> selectList(Book book);

}
