package www.everytime.com.books.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import www.everytime.com.books.model.Book;

@Service
public interface BookService {

	void insert(Book book);


}
