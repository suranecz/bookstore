package kimhyunki.bookstore.book.dao;

import kimhyunki.bookstore.book.dao.mapper.BookMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDaoImpl implements BookDao{
	@Autowired private BookMapper bookMapper;
}
