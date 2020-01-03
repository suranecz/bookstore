package kimhyunki.bookstore.book.dao;

import java.util.List;

import kimhyunki.bookstore.book.domain.Book;

public interface BookDao {
	List<Book> bookList();
	Book getBook(int bookNo);

}
