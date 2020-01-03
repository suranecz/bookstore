package kimhyunki.bookstore.book.dao;

import java.util.List;

import kimhyunki.bookstore.book.dao.mapper.BookMapper;
import kimhyunki.bookstore.book.domain.Book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDaoImpl implements BookDao{
	@Autowired private BookMapper bookMapper;

	@Override
	public List<Book> bookList() {
		return bookMapper.bookList();
	}

	@Override
	public Book getBook(int bookNo) {
		return bookMapper.getBook(bookNo);
	}

}
