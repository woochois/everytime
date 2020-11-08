package www.everytime.com.reply.promotionreply.service;

import java.util.List;

import www.everytime.com.reply.promotionreply.model.PromotionReply;

public interface PromotionReplyService {

	List<PromotionReply> list(int pbno);

	void insert(PromotionReply pr);

	void delete(int prno);

	void update(PromotionReply pr);

}
