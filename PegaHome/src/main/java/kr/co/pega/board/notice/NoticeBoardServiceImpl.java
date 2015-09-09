package kr.co.pega.board.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.pega.mapper.NoticeBoardMapper;


@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired NoticeBoardMapper noticeBoardMapper;

	@Override	
	public void insertNoticeBoard(NoticeBoard noticeBoard) throws IOException {
		noticeBoardMapper.insertNoticeBoard(noticeBoard);
	}

	@Override
	public ArrayList<NoticeBoard> getNoticeBoardList(int startNumber) {
		ArrayList<NoticeBoard> result = noticeBoardMapper.getNoticeBoardList(startNumber);
		return result;
	}

	// 공지사항 글 리스트의 갯수를 반환하는 메소드
	@Override
	public int countNoticeBoardList() {
		int result = noticeBoardMapper.countNoticeBoardList();
		return result;
	}
	
	// 글번호에 해당하는 게시글을 받아오는 메서드
	@Override
	public NoticeBoard getNoticeBoard(int boardNumber) {
		// TODO Auto-generated method stub
		NoticeBoard noticeBoard = noticeBoardMapper.getNoticeBoard(boardNumber);
		return noticeBoard;
	}
	
	// 조회수를 증가시키는 메서드
	@Override
	public void incrementHit(NoticeBoard noticeBoard) {
		// TODO Auto-generated method stub
		noticeBoardMapper.incrementHit(noticeBoard);
	}

	// 글 수정을 담당하는 메서드
	@Override
	public void updateNoticeBoard(NoticeBoard noticeBoard) {
		// TODO Auto-generated method stub
		noticeBoardMapper.updateNoticeBoard(noticeBoard);
	}

	// 글 삭제를 담당하는 메서드
	@Override
	public void deleteNoticeBoard(int boardNumber) {
		// TODO Auto-generated method stub
		noticeBoardMapper.deleteNoticeBoard(boardNumber);
	}

	// 댓글을 등록하는 메서드
	@Override
	public void registComment(NoticeComment comment) {
		// TODO Auto-generated method stub
		noticeBoardMapper.registComment(comment);
	}

	// 댓글 목록을 반환하는 메서드
	@Override
	public ArrayList<NoticeComment> getCommentList(int boardNumber) {
		// TODO Auto-generated method stub
		return noticeBoardMapper.getCommentList(boardNumber);
	}

	
	
}
