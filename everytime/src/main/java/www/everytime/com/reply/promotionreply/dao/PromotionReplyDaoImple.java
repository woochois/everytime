package www.everytime.com.reply.promotionreply.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.everytime.com.reply.promotionreply.model.PromotionReply;

@Repository
public class PromotionReplyDaoImple implements PromotionReplyDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<PromotionReply> list(int pbno) {
		// TODO Auto-generated method stub
		return sst.selectList("promotionreplyns.list", pbno);
	}

	@Override
	public void insert(PromotionReply pr) {
		// TODO Auto-generated method stub
		sst.insert("promotionreplyns.insert", pr);
		
	}

	@Override
	public void delete(int prno) {
		// TODO Auto-generated method stub
		sst.delete("promotionreplyns.delete", prno);
		
	}

	@Override
	public void update(PromotionReply pr) {
		// TODO Auto-generated method stub
		sst.update("promotionreplyns.update", pr);
		
	}
}
