package www.everytime.com.reply.freereply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.everytime.com.reply.freereply.dao.FreeReplyDao;
import www.everytime.com.reply.freereply.model.FreeReply;

@Service
public class FreeReplyServiceImpl implements FreeReplyService{
	@Autowired
	private FreeReplyDao frd;

	@Override
	public List<FreeReply> list(FreeReply freereply) {
		return frd.list(freereply);
	}

	@Override
	public void insert(FreeReply fr) {
		frd.insert(fr);
		
	}

	@Override
	public void delete(FreeReply fr) {
		frd.delete(fr);
		
	}

	@Override
	public void update(FreeReply fr) {
		frd.update(fr);
		
	}

}
