package www.everytime.com.board.freeboard.service;

import java.util.List;

import www.everytime.com.board.freeboard.model.FreeBoard;

public interface FreeBoardService {

	int getTotal(FreeBoard freeboard);

	List<FreeBoard> freeBoardList(FreeBoard freeboard);

	FreeBoard select(int fbno);

	int insert(FreeBoard freeboard);

	void updateReadCount(int fbno);

	int update(FreeBoard freeboard);

	int delete(int fbno);

}
