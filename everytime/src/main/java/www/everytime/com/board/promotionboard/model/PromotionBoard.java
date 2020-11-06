package www.everytime.com.board.promotionboard.model;

import java.sql.Date;

import lombok.Data;

@Data
public class PromotionBoard {
	int pbno;
	String pnickname;
	String ptitle;
	String pcontents;
	int preadcount;
	Date pregdate;
	int precommendation;
	boolean pdel;
	
	
	// 페이징용
	private int startRow;
	private int endRow;
	
	// 검색용
	private String search;
	private String keyword;
	
}
