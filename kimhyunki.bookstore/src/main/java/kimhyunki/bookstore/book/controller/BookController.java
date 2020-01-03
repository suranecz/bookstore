package kimhyunki.bookstore.book.controller;

import java.util.ArrayList;
import java.util.List;

import kimhyunki.bookstore.book.domain.Book;
import kimhyunki.bookstore.book.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("book")
public class BookController {
	@Autowired private BookService bookService;
	
	@RequestMapping("bookList")
	@ModelAttribute("booklist")
	public List<Book> bookList(){
		List<Book> book = new ArrayList<Book>();
		book=bookService.bookList();
		return book;
	}
	
	@RequestMapping("bookDetail")
	@ModelAttribute("book")
	public Book bookDetail(int bookNo){
		Book book = new Book();
		book=bookService.bookDetail(bookNo);
		return book;
	}
	
}
