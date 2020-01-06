package kimhyunki.bookstore.rating.domain;

public class Rating {
	private int bookNo;
	private String userId;
	private float rating;
	public int getBookNo() {
		return bookNo;
	}
	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "Rating [bookNo=" + bookNo + ", userId=" + userId + ", rating="
				+ rating + "]";
	}
	
	
}
