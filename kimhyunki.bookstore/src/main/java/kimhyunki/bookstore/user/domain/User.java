package kimhyunki.bookstore.user.domain;

public class User {
	private String userId;
	private String userPassword;
	private String userNickname;
	private int userPoint;
	private String userRank;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public int getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	public String getUserRank() {
		return userRank;
	}
	public void setUserRank(String userRank) {
		this.userRank = userRank;
	}
	
	@Override
	public String toString() {
		return String.format("%s,%s,%s,%s,%s", userId, userPassword, userNickname, userPoint, userRank);
	}
	
	
}
