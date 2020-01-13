package kimhyunki.bookstore.book.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import kimhyunki.bookstore.book.domain.Book;
import kimhyunki.bookstore.book.service.BookService;
import kimhyunki.bookstore.rating.service.RatingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("book")
public class BookController {
	@Autowired private BookService bookService;
	@Autowired private RatingService ratingService;
	
	@RequestMapping("bookList")
	@ModelAttribute("booklist")
	public List<Book> bookList(){
		List<Book> book = new ArrayList<Book>();
		book=bookService.bookList();
		return book;
	}
	
	@RequestMapping("bookDetail")
	public void bookDetail(int bookNo, Model model, HttpSession session){
		//Book book = new Book();
		//book=bookService.bookDetail(bookNo);
		model.addAttribute("book", bookService.bookDetail(bookNo));
		model.addAttribute("userId", session.getAttribute("userId"));
		model.addAttribute("voteNo",ratingService.getRating(bookNo).getBookNo());
		model.addAttribute("bookRating",ratingService.getRating(bookNo).getRating());
	}
	
	@RequestMapping("myPage")
	public void myPage(){}
	
}
