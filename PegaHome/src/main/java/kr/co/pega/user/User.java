package kr.co.pega.user;

/**
 * 페가수스 사용자 정보 VO
 * @author ryu
 */
public class User {

	/** 사용자 번호  */ private int userNumber;
	/** 사용자 아이디*/ private String userId;
	/** 사용자 비밀번호*/ private String userPassword;
	/** 사용자 이름*/ private String userName;
	/** 사용자 이메일*/ private String userEmail;
	/** 사용자 연락처*/ private String userPhone;
	/** 사용자 닉네임*/ private String userAlias;
	/** 사용자 권한*/ private String userGrant;
	/** 사용자 기수*/ private int userTh;
	/** 사용자 파트*/ private String userPart;
	
	
	
	
	public User(int userNumber, String userId, String userPassword, String userName, String userEmail, String userPhone,
			String userAlias, String userGrant, int userTh, String userPart) {
		super();
		this.userNumber = userNumber;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAlias = userAlias;
		this.userGrant = userGrant;
		this.userTh = userTh;
		this.userPart = userPart;
	}
	
	public User(Integer userNumber, String userId, String userPassword, String userName, String userEmail, String userPhone,
			String userAlias, String userGrant, Integer userTh, String userPart) {
		super();
		this.userNumber = userNumber;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAlias = userAlias;
		this.userGrant = userGrant;
		this.userTh = userTh;
		this.userPart = userPart;
	}
	
	
	public User(String userId, String userPassword, String userName, String userEmail, String userPhone,
			String userAlias, String userGrant, int userTh, String userPart) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAlias = userAlias;
		this.userGrant = userGrant;
		this.userTh = userTh;
		this.userPart = userPart;
	}
	
	public int getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAlias() {
		return userAlias;
	}
	public void setUserAlias(String userAlias) {
		this.userAlias = userAlias;
	}
	public String getUserGrant() {
		return userGrant;
	}
	public void setUserGrant(String userGrant) {
		this.userGrant = userGrant;
	}
	public int getUserTh() {
		return userTh;
	}
	public void setUserTh(int userTh) {
		this.userTh = userTh;
	}
	public String getUserPart() {
		return userPart;
	}
	public void setUserPart(String userPart) {
		this.userPart = userPart;
	}

	@Override
	public String toString() {
		return "User [userNumber=" + userNumber + ", userId=" + userId + ", userPassword=" + userPassword
				+ ", userName=" + userName + ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userAlias="
				+ userAlias + ", userGrant=" + userGrant + ", userTh=" + userTh + ", userPart=" + userPart + "]";
	}
	
	
	
}
