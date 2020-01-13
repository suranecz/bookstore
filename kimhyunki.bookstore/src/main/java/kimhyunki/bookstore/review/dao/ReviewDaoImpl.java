package kimhyunki.bookstore.review.dao;

import java.util.List;

import kimhyunki.bookstore.review.dao.mapper.ReviewMapper;
import kimhyunki.bookstore.review.domain.Review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMapper reviewMapper;

	@Override
	public List<Review> reviewList(int bookNo) {
		return reviewMapper.reviewList(bookNo);
	}

	@Override
	public int addReview(Review review) {
		return reviewMapper.addReview(review);
	}

	@Override
	public int updateReview(Review review) {
		return reviewMapper.updateReview(review);
	}

	@Override
	public int delReview(int reviewNo) {
		return reviewMapper.delReview(reviewNo);
	}
}