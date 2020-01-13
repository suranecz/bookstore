package kimhyunki.bookstore.review.service;

import java.util.List;

import kimhyunki.bookstore.review.domain.Review;

public interface ReviewService {
	List<Review> reviewList(int bookNo);
	boolean registReview(Review review);
	boolean modifyReview(Review review);
	boolean delReview(int reviewNo);
}
