package www.everytime.com.board.freeboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.everytime.com.board.freeboard.dao.FreeBoardDao;
import www.everytime.com.board.freeboard.model.FreeBoard;

@Service
public class FreeBoardServiceImpl implements FreeBoardService{
	
	@Autowired
	private FreeBoardDao fbd;

	public int getTotal(FreeBoard freeboard) {
		return fbd.getTotal(freeboard);
	}

	public List<FreeBoard> freeBoardList(FreeBoard freeboard) {
		return fbd.freeBoardList(freeboard);
	}
	
	public FreeBoard select(int fbno) {
		return fbd.select(fbno);
	}

	public int insert(FreeBoard freeboard) {
		return fbd.insert(freeboard);
	}

	public void updateReadCount(int fbno) {
		 fbd.updateReadCount(fbno);
	}

	public int update(FreeBoard freeboard) {
		return fbd.update(freeboard);
	}

	public int delete(int fbno) {
		return fbd.delete(fbno);
	}
}
