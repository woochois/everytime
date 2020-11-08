package www.everytime.com.reply.promotionreply.dao;

import java.util.List;

import www.everytime.com.reply.promotionreply.model.PromotionReply;

public interface PromotionReplyDao {

	List<PromotionReply> list(int pbno);

	void insert(PromotionReply pr);

	void delete(int prno);

	void update(PromotionReply pr);

}
