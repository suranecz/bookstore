package kimhyunki.bookstore.rating.dao;

import kimhyunki.bookstore.rating.domain.Rating;

public interface RatingDao {
	int setRating(Rating rating);
	int searchHistory(Rating rating);
	Rating getRating(int bookNo);

}
