package kr.co.pega.board.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

public interface NoticeBoardService {

	// 글 쓰기 메서드
	public void insertNoticeBoard(NoticeBoard noticeBoard) throws IOException;
	// 글 목록 받아오는 메서드
	public ArrayList<NoticeBoard> getNoticeBoardList(int startNumber);
	// 글의 갯수를 리턴하는 메서드
	public int countNoticeBoardList();
	// 글번호를 입력받아 해당하는 글 객체를 반환하는 메서드
	public NoticeBoard getNoticeBoard(int boardNumber);
	// 조회수를 증가시키는 메서드
	public void incrementHit(NoticeBoard noticeBoard);
	// 글 내용 수정하는 메서드
	public void updateNoticeBoard(NoticeBoard noticeBoard);
	// 글을 삭제하는 메서드
	public void deleteNoticeBoard(int boardNumber);
	// 댓글을 등록하는 메서드
	public void registComment(NoticeComment comment);
	// 댓글 목록을 반환하는 메서드
	public ArrayList<NoticeComment> getCommentList(int boardNumber);
}
