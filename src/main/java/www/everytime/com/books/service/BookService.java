package www.everytime.com.books.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface BookService {

	void insert(Map<String, Object> param);

}
