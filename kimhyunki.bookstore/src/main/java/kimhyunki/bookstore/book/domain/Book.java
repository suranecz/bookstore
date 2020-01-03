package kimhyunki.bookstore.book.domain;

import java.util.Date;



public class Book {
	private int bookNo;
	private String bookTitle;
	private String bookAuthor;
	private String bookIntro;
	private int bookPrice;
	private int bookStock;
	private Date bookRegDate;
	private String bookImg;
	private String bookPublish;
	
	public int getBookNo() {
		return bookNo;
	}
	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookIntro() {
		return bookIntro;
	}
	public void setBookIntro(String bookIntro) {
		this.bookIntro = bookIntro;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public int getBookStock() {
		return bookStock;
	}
	public void setBookStock(int bookStock) {
		this.bookStock = bookStock;
	}
	public Date getRegDate() {
		return bookRegDate;
	}
	public void setRegDate(Date regDate) {
		this.bookRegDate = regDate;
	}
	public String getBookImg() {
		return bookImg;
	}
	public void setBookImg(String bookImg) {
		this.bookImg = bookImg;
	}
	public String getBookPublish() {
		return bookPublish;
	}
	public void setBookPublish(String bookPublish) {
		this.bookPublish = bookPublish;
	}
	@Override
	public String toString() {
		return "Book [bookNo=" + bookNo + ", bookTitle=" + bookTitle
				+ ", bookAuthor=" + bookAuthor + ", bookIntro=" + bookIntro
				+ ", bookPrice=" + bookPrice + ", bookStock=" + bookStock
				+ ", bookRegDate=" + bookRegDate + ", bookImg=" + bookImg
				+ ", bookPublish=" + bookPublish + "]";
	}
	
	
}
