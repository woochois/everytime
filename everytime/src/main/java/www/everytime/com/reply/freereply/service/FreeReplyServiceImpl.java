package www.everytime.com.reply.freereply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.everytime.com.reply.freereply.dao.FreeReplyDao;

@Service
public class FreeReplyServiceImpl implements FreeReplyService{
	@Autowired
	private FreeReplyDao frd;
}
