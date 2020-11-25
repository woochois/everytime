package www.everytime.com.books.model;

import lombok.Data;

@Data
public class Book {
	private String isbn;
	private String title;
	private String authors;
	private String publisher;
	private String price;
	private String translators;
	private String datetime;
	private String thumbnail;
}
