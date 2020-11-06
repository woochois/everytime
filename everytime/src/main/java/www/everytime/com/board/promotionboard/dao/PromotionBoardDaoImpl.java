package www.everytime.com.board.promotionboard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.everytime.com.board.promotionboard.model.PromotionBoard;

@Repository
public class PromotionBoardDaoImpl implements PromotionBoardDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<PromotionBoard> list(PromotionBoard board) {
		// TODO Auto-generated method stub
		return sst.selectList("promotionboardns.list", board);
	}

	@Override
	public int insert(PromotionBoard board) {
		// TODO Auto-generated method stub
		return sst.insert("promotionboardns.insert", board);
	}

	@Override
	public void updateReadCount(int pbno) {
		// TODO Auto-generated method stub
		sst.update("promotionboardns.updateReadCount", pbno);
	}

	@Override
	public PromotionBoard select(int pbno) {
		// TODO Auto-generated method stub
		return sst.selectOne("promotionboardns.select", pbno);
	}

	@Override
	public int getTotal(PromotionBoard board) {
		// TODO Auto-generated method stub
		return sst.selectOne("promotionboardns.getTotal", board);
	}

	@Override
	public int update(PromotionBoard board) {
		// TODO Auto-generated method stub
		return sst.update("promotionboardns.update", board);
	}

	@Override
	public int delete(int pbno) {
		// TODO Auto-generated method stub
		return sst.delete("promotionboardns.delete", pbno);
	}

	@Override
	public int maxPbno() {
		// TODO Auto-generated method stub
		return sst.selectOne("promotionboardns.maxPbno");
	}
}
