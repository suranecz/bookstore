package kimhyunki.bookstore.book.service;

import kimhyunki.bookstore.book.dao.BookDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{
	@Autowired private BookDao bookDao;
}
