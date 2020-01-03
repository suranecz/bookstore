package kimhyunki.bookstore.book.dao.mapper;

import java.util.List;

import kimhyunki.bookstore.book.domain.Book;

public interface BookMapper {
	List<Book> bookList();
	Book getBook(int bookNo);
}
