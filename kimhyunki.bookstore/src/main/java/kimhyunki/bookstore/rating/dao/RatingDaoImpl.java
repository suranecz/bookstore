package kimhyunki.bookstore.rating.dao;

import kimhyunki.bookstore.rating.dao.mapper.RatingMapper;
import kimhyunki.bookstore.rating.domain.Rating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RatingDaoImpl implements RatingDao{
	@Autowired private RatingMapper ratingMapper;
	
	@Override
	public int setRating(Rating rating) {
		return ratingMapper.setRating(rating);
	}

	@Override
	public int searchHistory(Rating rating) {
		return ratingMapper.searchHistory(rating);
	}

	@Override
	public Rating getRating(int bookNo) {
		return ratingMapper.getRating(bookNo);
	}

}
