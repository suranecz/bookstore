package kimhyunki.bookstore.book.controller;

import kimhyunki.bookstore.book.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("book")
public class BookController {
	@Autowired private BookService bookService;
	
	@RequestMapping("booklist")
	public void booklist(){
		
	}
	
}
