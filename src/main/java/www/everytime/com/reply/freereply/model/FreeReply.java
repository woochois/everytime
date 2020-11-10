package www.everytime.com.reply.freereply.model;

import java.util.Date;

import lombok.Data;

@Data
public class FreeReply {
	private int frrno;
    private int frbno; 
    private String frnickname;
    private String frrcontents;
    private Date frregdate;
    private int frrecommendation;
    private boolean frdel;
}
