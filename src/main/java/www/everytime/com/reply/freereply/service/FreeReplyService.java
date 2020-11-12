package www.everytime.com.reply.freereply.service;

import java.util.List;

import www.everytime.com.board.freeboard.model.FreeBoard;
import www.everytime.com.reply.freereply.model.FreeReply;

public interface FreeReplyService {

	List<FreeReply> list(FreeReply freereply);

	void insert(FreeReply freereply);

	int delete(int frrno);

	void update(FreeReply freereply);

	int select(int fbno);
	
	
}
