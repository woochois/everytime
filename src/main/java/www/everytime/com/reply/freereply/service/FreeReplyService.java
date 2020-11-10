package www.everytime.com.reply.freereply.service;

import java.util.List;

import www.everytime.com.reply.freereply.model.FreeReply;

public interface FreeReplyService {

	List<FreeReply> list(FreeReply freereply);

	void insert(FreeReply fr);

	void delete(FreeReply fr);

	void update(FreeReply fr);

}
