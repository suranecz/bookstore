package kimhyunki.bookstore.book.service;

import java.util.List;

import kimhyunki.bookstore.book.dao.BookDao;
import kimhyunki.bookstore.book.domain.Book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{
	@Autowired private BookDao bookDao;

	@Override
	public List<Book> bookList() {
		return bookDao.bookList();
	}

	@Override
	public Book bookDetail(int bookNo) {
		return bookDao.getBook(bookNo);
	}

}
