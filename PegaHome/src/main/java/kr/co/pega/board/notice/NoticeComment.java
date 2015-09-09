package kr.co.pega.board.notice;

import java.sql.Date;

public class NoticeComment {

	/** 댓글 번호*/ private int nc_number;
	/** 최종 수정일*/ private Date nc_date;
	/** 댓글 내용*/ private String nc_content;
	/** 게시판 글 번호*/ private int nb_number;
	/** 사용자 번호*/ private int user_number;
	/** 사용자 별명*/ private String user_alias ;
	
	public NoticeComment(Integer nc_number, Date nc_date, String nc_content, Integer nb_number, Integer user_number,
			String user_alias) {
		super();
		this.nc_number = nc_number;
		this.nc_date = nc_date;
		this.nc_content = nc_content;
		this.nb_number = nb_number;
		this.user_number = user_number;
		this.user_alias = user_alias;
	}

	public NoticeComment(Date nc_date, String nc_content, int nb_number, int user_number,
			String user_alias) {
		super();
		this.nc_date = nc_date;
		this.nc_content = nc_content;
		this.nb_number = nb_number;
		this.user_number = user_number;
		this.user_alias = user_alias;
	}
	
	public int getNc_number() {
		return nc_number;
	}
	public void setNc_number(int nc_number) {
		this.nc_number = nc_number;
	}
	public Date getNc_date() {
		return nc_date;
	}
	public void setNc_date(Date nc_date) {
		this.nc_date = nc_date;
	}
	public String getNc_content() {
		return nc_content;
	}
	public void setNc_content(String nc_content) {
		this.nc_content = nc_content;
	}
	
	public int getNb_number() {
		return nb_number;
	}

	public void setNb_number(int nb_number) {
		this.nb_number = nb_number;
	}

	public int getUser_number() {
		return user_number;
	}
	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}
	public String getUser_alias() {
		return user_alias;
	}
	public void setUser_alias(String user_alias) {
		this.user_alias = user_alias;
	}

	@Override
	public String toString() {
		return "NoticeComment [nc_number=" + nc_number + ", nc_date=" + nc_date + ", nc_content=" + nc_content
				+ ", nb_number=" + nb_number + ", user_number=" + user_number + ", user_alias=" + user_alias + "]";
	}
	
	
	
}
