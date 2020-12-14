package www.everytime.com.books.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class BookTotal {
	private Book book;
	private BookSell booksell;	
	
	// 검색용
	private String keyword;
}
