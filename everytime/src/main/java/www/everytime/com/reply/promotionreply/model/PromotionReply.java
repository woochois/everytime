package www.everytime.com.reply.promotionreply.model;

import java.sql.Date;

import lombok.Data;

@Data
public class PromotionReply {
	int prno;
	int pbno;
	String pnickname;
	String prcontents;
	Date pregdate;
	int precommendation;
	boolean pdel;
}
