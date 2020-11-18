package www.everytime.com.books.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import www.everytime.com.books.service.BookService;

@Controller
public class BooksController {


	@Autowired
	private BookService bs;
	
	@RequestMapping("/books")
	public String books() {
		return "books";
	}

	@RequestMapping("/booksell")
	public String booksell() {
		return "booksell";
	}

	@RequestMapping("/bookSellForm")
	public String bookSellForm() {
		return "bookSellForm";
	}	
	
    //키워드가 있을때도 있고 없을때도있음 
    //있을때는 가져가고 없을때는 안가져가고 
    @RequestMapping("bookList.do")
    public ModelAndView bookList(@RequestParam(required=false)String keyword){
        ModelAndView mav = new ModelAndView();
        
        if(keyword !=null)
        {
            mav.addObject("bookList",service.searchBook(keyword,10,1));
        }
        mav.setViewName("bookList");
        return mav;
    }

}
