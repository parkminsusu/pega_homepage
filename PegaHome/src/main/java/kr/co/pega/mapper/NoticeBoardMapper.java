package kr.co.pega.mapper;

import java.util.ArrayList;
import kr.co.pega.board.notice.NoticeBoard;
import kr.co.pega.board.notice.NoticeComment;

public interface NoticeBoardMapper {

	public void insertNoticeBoard(NoticeBoard noticeBoard);
	public ArrayList<NoticeBoard> getNoticeBoardList(int startNumber);
	public int countNoticeBoardList();
	public NoticeBoard getNoticeBoard(int boardNumber);
	public void incrementHit(NoticeBoard noticeBoard);
	public void updateNoticeBoard(NoticeBoard noticeBoard);
	public void deleteNoticeBoard(int boardNumber);
	public void registComment(NoticeComment comment);
	public ArrayList<NoticeComment> getCommentList(int boardNumber);
}
