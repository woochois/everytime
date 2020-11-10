package www.everytime.com.reply.freereply.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.everytime.com.reply.freereply.model.FreeReply;

@Repository
public class FreeReplyDaoImpl implements FreeReplyDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public List<FreeReply> list(FreeReply freereply) {
		return sst.selectList("freereplyns.list", freereply);
	}

	@Override
	public void insert(FreeReply fr) {
		sst.insert("freereplyns.insert", fr);
		
	}

	@Override
	public void delete(FreeReply fr) {
		sst.delete("freereplyns.delete", fr);
		
	}

	@Override
	public void update(FreeReply fr) {
		sst.update("freereplyns.update", fr);
		
	}

}
