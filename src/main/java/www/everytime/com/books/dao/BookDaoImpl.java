package www.everytime.com.books.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.everytime.com.books.model.Book;

@Repository
public class BookDaoImpl implements BookDao{

	@Autowired
	private SqlSessionTemplate sst;

	public void insert(Book book) {
		sst.insert("bookns.insert", book);
		
	}

		
	
}
