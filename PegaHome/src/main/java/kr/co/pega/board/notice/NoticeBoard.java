package kr.co.pega.board.notice;

import java.sql.Date;

/**
 * 공지사항 게시판 DAO
 * @author Park
 *
 */

public class NoticeBoard {

	/** 글 번호*/private int boardNumber;
	/** 글 제목*/private String boardTitle; 
	/** 글 내용*/private String boardContent;
	/** 최종 수정일*/private Date boardDate;
	/** 사용자 번호*/private int userNumber;
	/** 사용자 별명*/private String userAlias;
	/** 조회수 */private int hit;
	
	
	public NoticeBoard(String boardTitle, String boardContent, Date boardDate, Integer userNumber, Integer boardNumber, String userAlias,Integer hit) {
		super();
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.userNumber = userNumber;
		this.boardNumber = boardNumber;
		this.userAlias = userAlias;
		this.hit = hit;
	}
	
	public NoticeBoard(String boardTitle, String boardContent, Date boardDate, int userNumber, String userAlias) {
		super();
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.userNumber = userNumber;
		this.userAlias = userAlias;
		this.hit = 0;
	}
	
	public NoticeBoard(int boardNumber, String title, String contents, Date sqlDate) {
		// TODO Auto-generated constructor stub
		this.boardNumber = boardNumber;
		this.boardTitle = title;
		this.boardContent = contents;
		this.boardDate = sqlDate;
	}

	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public int getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getUserAlias() {
		return userAlias;
	}

	public void setUserAlias(String userAlias) {
		this.userAlias = userAlias;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "NoticeBoard [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", boardDate=" + boardDate + ", userNumber=" + userNumber + ", userAlias=" + userAlias
				+ "]";
	}
	
	
}
