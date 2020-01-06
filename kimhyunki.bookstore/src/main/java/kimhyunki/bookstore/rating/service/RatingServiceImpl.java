package kimhyunki.bookstore.rating.service;

import kimhyunki.bookstore.rating.dao.RatingDao;
import kimhyunki.bookstore.rating.domain.Rating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingServiceImpl implements RatingService{
	@Autowired private RatingDao ratingDao;
	
	@Override
	public boolean registRating(Rating rating) {
		return ratingDao.setRating(rating)>0;
	}

	@Override
	public int searchHistory(Rating rating) {
		return ratingDao.searchHistory(rating);
	}

	@Override
	public Rating getRating(int bookNo) {
		return ratingDao.getRating(bookNo);
	}

}
