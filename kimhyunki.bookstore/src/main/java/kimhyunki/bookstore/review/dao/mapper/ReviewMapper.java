package kimhyunki.bookstore.review.dao.mapper;

import java.util.List;

import kimhyunki.bookstore.review.domain.Review;

public interface ReviewMapper {
	List<Review> reviewList(int bookNo);
	int addReview(Review review);
	int updateReview(Review review);
	int delReview(int reviewNo);
}
