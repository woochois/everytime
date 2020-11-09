package www.everytime.com.board.promotionboard.model;

import java.sql.Date;

import lombok.Data;

@Data
public class PromotionBoard {
	private int pbno;
	private String pnickname;
	private String ptitle;
	private String pcontents;
	private int preadcount;
	private Date pregdate;
	private int precommendation;
	private boolean pdel;
	
	
	// 페이징용
	private int startRow;
	private int endRow;
	
	// 검색용
	private String search;
	private String keyword;
	
}
