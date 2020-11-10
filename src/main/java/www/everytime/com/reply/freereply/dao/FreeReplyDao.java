package www.everytime.com.reply.freereply.dao;

import java.util.List;

import www.everytime.com.reply.freereply.model.FreeReply;

public interface FreeReplyDao {
	
	List<FreeReply> list(FreeReply freereply);

	void insert(FreeReply fr);

	void delete(FreeReply fr);

	void update(FreeReply fr);

}
