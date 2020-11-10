package www.everytime.com.board.freeboard.dao;

import java.util.List;

import www.everytime.com.board.freeboard.model.FreeBoard;

public interface FreeBoardDao {

	int getTotal(FreeBoard freeboard);

	List<FreeBoard> freeBoardList(FreeBoard freeboard);

	FreeBoard select(int fbno);

	int insert(FreeBoard freeboard);

	Object updateReadCount(int fbno);

	int update(FreeBoard freeboard);

	int delete(int fbno);

	

}
