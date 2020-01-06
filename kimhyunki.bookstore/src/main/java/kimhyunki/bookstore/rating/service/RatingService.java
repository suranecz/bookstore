package kimhyunki.bookstore.rating.service;

import kimhyunki.bookstore.rating.domain.Rating;

public interface RatingService {
	boolean registRating(Rating rating);
	int searchHistory(Rating rating);
	Rating getRating(int bookNo);
}
