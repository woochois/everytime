package www.everytime.com.reply.freereply.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.everytime.com.board.freeboard.model.FreeBoard;
import www.everytime.com.reply.freereply.model.FreeReply;

@Repository
public class FreeReplyDaoImpl implements FreeReplyDao{
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<FreeReply> list(FreeReply freereply) {
		return sst.selectList("freereplyns.list", freereply);
	}

	public void insert(FreeReply freereply) {
		sst.insert("freereplyns.insert", freereply);
	}

	public int delete(int frrno) {
		return sst.update("freereplyns.delete",frrno );
	}

	public void update(FreeReply freereply) {
		sst.update("freereplyns.update", freereply);
	}

	public int select(int fbno) {
		return sst.selectOne("freereplyns.select", fbno);
	}

}
