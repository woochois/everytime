package www.everytime.com.books.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Book {
	private String isbn;
	private String title;
	private String author;
	private String publisher;
	private int price;
	private String translators;
	private Date datetime;
	private String thumbnail;
}
