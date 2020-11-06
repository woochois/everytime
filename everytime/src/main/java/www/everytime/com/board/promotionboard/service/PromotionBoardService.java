package www.everytime.com.board.promotionboard.service;

import java.util.List;

import www.everytime.com.board.promotionboard.model.PromotionBoard;

public interface PromotionBoardService {

	List<PromotionBoard> list(PromotionBoard board);

	int insert(PromotionBoard board);

	void updateReadCount(int pbno);

	PromotionBoard select(int pbno);

	int getTotal(PromotionBoard board);

	int update(PromotionBoard board);

	int delete(int pbno);

	int maxPbno();

}
