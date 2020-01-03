package kimhyunki.bookstore.book.service;

import java.util.List;

import kimhyunki.bookstore.book.domain.Book;

public interface BookService {
	List<Book> bookList();
	Book bookDetail(int bookNo);
}
