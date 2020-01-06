package kimhyunki.bookstore.rating.dao.mapper;

import kimhyunki.bookstore.rating.domain.Rating;

public interface RatingMapper {
	int setRating(Rating rating);
	int searchHistory(Rating rating);
	Rating getRating(int bookNo);
}
