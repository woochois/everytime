package www.everytime.com.board.freeboard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.everytime.com.board.freeboard.model.FreeBoard;

@Repository
public class FreeBoardDaoImpl implements FreeBoardDao{
	
	@Autowired
	private SqlSessionTemplate sst;

	public int getTotal(FreeBoard freeboard) {
		return sst.selectOne("freeboardns.getTotal", freeboard);
	}

	public List<FreeBoard> freeBoardList(FreeBoard freeboard) {
		return sst.selectList("freeboardns.freeBoardList", freeboard);
	}

	public FreeBoard select(int fbno) {
		return sst.selectOne("freeboardns.select", fbno);
	}

	public int insert(FreeBoard freeboard) {
		return sst.insert("freeboardns.insert", freeboard);
	}

	public int updateReadCount(int fbno) {
		return sst.update("freeboardns.updateReadCount", fbno);
	}

	public int update(FreeBoard freeboard) {
		return sst.update("freeboardns.update", freeboard);
	}

	public int delete(int fbno) {
		return sst.update("freeboardns.delete", fbno);
	}

}
