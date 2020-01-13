package kimhyunki.bookstore.review.dao;

import java.util.List;

import kimhyunki.bookstore.review.domain.Review;

public interface ReviewDao {
	List<Review> reviewList(int bookNo);
	int addReview(Review review);
	int updateReview(Review review);
	int delReview(int reviewNo);
}