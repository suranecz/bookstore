package kimhyunki.bookstore.review.domain;

import java.util.Date;

public class Review {
	private int reviewNo;
	private int bookNo;
	private String userNickName;
	private String userId;
	private String content;
	private Date reviewRegDate;
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getBookNo() {
		return bookNo;
	}
	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(Date reviewRegDate) {
		this.reviewRegDate = reviewRegDate;
	}
	
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", bookNo=" + bookNo
				+ ", userNickName=" + userNickName + ", userId=" + userId
				+ ", content=" + content + ", reviewRegDate=" + reviewRegDate
				+ "]";
	}
}