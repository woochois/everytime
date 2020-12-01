package www.everytime.com.books.model;

 import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

 @Data
 public class BookSell {
	 
 	 private int listnum;
 	 private int sellnum;
     private String sellprice;
     private String contents;
     private Date datetime;
     private String underline;
     private String writing;
     private String cover;
     private String nameentry;
     private String pagecolor;
     private String pagestate;
     private String img;
     private String delivery;
     private String directdeal;
     private String location;
     private String map;
     
  // 파일 upload용
     private MultipartFile file; // uplaodForm.jsp에 있는 input name과 동일해야함
 }