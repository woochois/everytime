package www.everytime.com.books.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.everytime.com.books.dao.BookDao;
import www.everytime.com.books.model.Book;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	private BookDao bd;

	@Override
	public void insert(Book book) {
		bd.insert(book);
	}

	@Override
	public List<Book> selectList(Book book) {
		return bd.selectList(book);
	}
	
}
