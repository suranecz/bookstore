package kimhyunki.bookstore.rating.controller;

import kimhyunki.bookstore.rating.domain.Rating;
import kimhyunki.bookstore.rating.service.RatingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("rating")
public class RatingController {
	@Autowired private RatingService ratingService;
	
	@RequestMapping("setRating")
	@ResponseBody
	public void setRating(Rating rating){
		ratingService.registRating(rating);
	}
	
	@RequestMapping("searchHistory")
	@ResponseBody
	public int searchHistory(Rating rating){
		return ratingService.searchHistory(rating);
	}
}
