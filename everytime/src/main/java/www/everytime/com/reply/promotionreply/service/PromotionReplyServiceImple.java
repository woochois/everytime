package www.everytime.com.reply.promotionreply.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.everytime.com.reply.promotionreply.dao.PromotionReplyDao;
import www.everytime.com.reply.promotionreply.model.PromotionReply;

@Service
public class PromotionReplyServiceImple implements PromotionReplyService{
	private PromotionReplyDao prd;

	@Override
	public List<PromotionReply> list(int pbno) {
		// TODO Auto-generated method stub
		return prd.list(pbno);
	}

	@Override
	public void insert(PromotionReply pr) {
		// TODO Auto-generated method stub
		prd.insert(pr);
	}

	@Override
	public void delete(int prno) {
		// TODO Auto-generated method stub
		prd.delete(prno);
	}

	@Override
	public void update(PromotionReply pr) {
		// TODO Auto-generated method stub
		prd.update(pr);
	}
}
