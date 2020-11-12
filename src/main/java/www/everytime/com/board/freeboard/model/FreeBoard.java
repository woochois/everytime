package www.everytime.com.board.freeboard.model;

import java.util.Date;

import lombok.Data;
import www.everytime.com.member.model.Member;

@Data
public class FreeBoard {
	private int fbno;
    private String fnickname;
    private String ftitle;
    private String fcontents;
    private int freadcount;
    private Date fregdate;
    private int frecommendation;
    private boolean fdel;
    
    //댓글 갯수용
    private int commentCount;
    
	//페이징용
	private int startRow;
	private int endRow;
	
	//검색용
	private String search;
	private String keyword;
	
	
}
