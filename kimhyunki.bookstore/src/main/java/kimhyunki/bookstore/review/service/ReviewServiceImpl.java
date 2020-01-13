package kimhyunki.bookstore.review.service;

import java.util.List;

import kimhyunki.bookstore.review.dao.ReviewDao;
import kimhyunki.bookstore.review.domain.Review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired private ReviewDao reviewDao;

	@Override
	public List<Review> reviewList(int bookNo) {
		return reviewDao.reviewList(bookNo);
	}

	@Override
	public boolean registReview(Review review) {
		return reviewDao.addReview(review)>0;
	}

	@Override
	public boolean modifyReview(Review review) {
		return reviewDao.updateReview(review)>0;
	}

	@Override
	public boolean delReview(int reviewNo) {
		return reviewDao.delReview(reviewNo)>0;
	}
}