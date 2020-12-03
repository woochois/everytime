package www.everytime.com.books.model;

 import java.sql.Date;

import lombok.Data;

 @Data
 public class BookSell {
	 
 	 private int listnum;
 	 private int sellnum;
     private String sellprice;
     private String contents;
     private Date regdate;
     private String underline;
     private String writing;
     private String cover;
     private String nameentry;
     private String pagecolor;
     private String pagestate;
     private String imgfile1;
     private String delivery;
     private String directdeal;
     private String location;

 }