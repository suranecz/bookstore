package kimhyunki.bookstore.review.controller;

import kimhyunki.bookstore.review.domain.Review;
import kimhyunki.bookstore.review.service.ReviewService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {
	@Autowired private ReviewService reviewService;
	
	@RequestMapping("registReview")
	public boolean registReview(Review review){
		return reviewService.registReview(review);
	}
	
	@RequestMapping("modifyReview")
	public boolean modifyReview(Review review){
		return reviewService.modifyReview(review);
	}
	
	@RequestMapping("delReview")
	public boolean delReview(int reviewNo){
		return reviewService.delReview(reviewNo);
	}
}