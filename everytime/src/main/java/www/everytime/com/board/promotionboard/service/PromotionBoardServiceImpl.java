package www.everytime.com.board.promotionboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.everytime.com.board.promotionboard.dao.PromotionBoardDao;
import www.everytime.com.board.promotionboard.model.PromotionBoard;

@Service
public class PromotionBoardServiceImpl implements PromotionBoardService{
	@Autowired
	private PromotionBoardDao pbd;

	public List<PromotionBoard> list(PromotionBoard board){
		return pbd.list(board);
	}

	public int insert(PromotionBoard board) {
		return pbd.insert(board);
	}

	public void updateReadCount(int pbno) {
		pbd.updateReadCount(pbno);
	}

	public PromotionBoard select(int pbno) {
		return pbd.select(pbno);
	}

	public int getTotal(PromotionBoard board) {
		return pbd.getTotal(board);
	}

	public int update(PromotionBoard board) {
		return pbd.update(board);
	}

	public int delete(int pbno) {
		return pbd.delete(pbno);
	}

	public int maxPbno() {
		return pbd.maxPbno();
	}
}
