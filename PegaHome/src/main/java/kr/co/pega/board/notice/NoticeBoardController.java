package kr.co.pega.board.notice;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.pega.user.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class NoticeBoardController {

	@Autowired
	NoticeBoardService noticeBoardService;
	
	// 글쓰기 기능을 하는 메서드
	@RequestMapping(value = "NoticeBoardController/write.do", method = RequestMethod.POST)
	public String insertNoticeBoard(HttpServletRequest request) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		// view에서 제목, 내용, 사용자 정보를 받아옴
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		User user = (User) request.getSession().getAttribute("user");
		int userNumber = user.getUserNumber();
		String userAlias = user.getUserAlias();
		
		// 현재 시간을 받아옴
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		// noticeBoard를 받아온 정보를 이용해만들고, insert시킴 
		NoticeBoard noticeBoard = new NoticeBoard(title, contents, sqlDate, userNumber, userAlias);
		noticeBoardService.insertNoticeBoard(noticeBoard);

		return "redirect:/NoticeBoardController/notice.do";
	}

	// 공지사항 글 목록을 처리하는 메서드.
	@RequestMapping(value = "NoticeBoardController/notice.do", method = RequestMethod.GET)
	public String Notice(Locale locale, Model model, HttpServletRequest request) {
		
		// 게시글의 갯수를 가져옵니다.
		int countList = noticeBoardService.countNoticeBoardList();
		// 게시글에 있는 댓글 갯수를 저장하는 변수
		int[] commentCount = new int[10];
		
		int pageNumTemp = 1;
		// 한 페이지에 10개의 글이 보임
		int listCount = 10;
		// 뷰에서 글번호를 받아옴
		String pageNum = request.getParameter("pageNum");
		if (pageNum != null) {
			pageNumTemp = Integer.parseInt(pageNum);
		}
		// 시작하는 글번호를 계산함
		int startNumber = listCount * (pageNumTemp-1);
		// 게시글 리스트를 가져옵니다.
		ArrayList<NoticeBoard> list = noticeBoardService.getNoticeBoardList(startNumber);
		int i=0;
		for (NoticeBoard noticeBoard : list) {
			commentCount[i] = getCommentList(noticeBoard.getBoardNumber()).size();
			i++;
		}
		 
				
		// 뷰에서 사용할수있도록 모델에 등록시킵니다.
		request.setAttribute("pageNum", pageNum);
		model.addAttribute("countList", countList);
		model.addAttribute("list", list);
		model.addAttribute("commentCount", commentCount);
		
		return "notice/listings_notice.do";
	}
	
	// 게시판 상세보기 처리
	@RequestMapping(value = "NoticeBoardController/noticeView.do", method = RequestMethod.GET)
	public String noticeView(Locale locale, Model model, HttpServletRequest request) {
		
		// 뷰에서 글 번호를 받아옵니다.
		int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
		// 글번호에 맞는 게시글을 받아옵니다.
		NoticeBoard noticeBoard = noticeBoardService.getNoticeBoard(boardNumber);
		// 조회수를 증가시킵니다.
		noticeBoardService.incrementHit(noticeBoard);
		// 증가시킨 게시글을 다시 받아옵니다.
		noticeBoard = noticeBoardService.getNoticeBoard(boardNumber);
		// 해당하는 게시글에 댓글목록을 받아옵니다.
		ArrayList<NoticeComment> commentList = getCommentList(boardNumber);
		// 댓글 갯수를 받아옵니다.
		int commentCount = getCommentList(noticeBoard.getBoardNumber()).size();
		// 뷰에서 사용할수있도록 모델에 등록시킵니다.
		model.addAttribute("noticeBoard", noticeBoard);
		model.addAttribute("commentList", commentList);
		model.addAttribute("commentCount", commentCount);
		
		return "notice/viewContents.do";
	}
	
	// 게시글 수정 페이지로 이동합니다.
	@RequestMapping(value = "NoticeBoardController/updateNoticeBoard.do", method = RequestMethod.GET)
	public String updateNoticeBoard(Locale locale, Model model, HttpServletRequest request) {
		
		// 뷰에서 글 번호를 받아옵니다.
		int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
		// 글번호에 맞는 게시글을 받아옵니다.
		NoticeBoard noticeBoard = noticeBoardService.getNoticeBoard(boardNumber);
		
		// 뷰에서 사용할수있도록 모델에 등록시킵니다.
		model.addAttribute("noticeBoard", noticeBoard);
		
		return "notice/updateNoticeBoard.do";
	}
	
	// 게시글 수정 내용을 저장하고 게시글 목록으로 이동합니다.
		@RequestMapping(value = "NoticeBoardController/updateNoticeBoardToList.do", method = RequestMethod.POST)
		public String updateNoticeBoardToList(Locale locale, Model model, HttpServletRequest request) throws UnsupportedEncodingException {
			
			request.setCharacterEncoding("utf-8");
			
			// view에서 글번호, 제목, 내용, 사용자 정보를 받아옴
			int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			// 현재 시간을 받아옴
			java.util.Date utilDate = new java.util.Date();
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			// 변경된 데이터로된 DAO를 만듭니다.
			NoticeBoard noticeBoard = new NoticeBoard(boardNumber, title, contents, sqlDate);
			noticeBoardService.updateNoticeBoard(noticeBoard);
			
			// 뷰에서 사용할수있도록 모델에 등록시킵니다.
			model.addAttribute("noticeBoard", noticeBoard);
			// 글 목록으로 이동합니다.
			return "redirect:/NoticeBoardController/notice.do";
		}
		
		// 게시판 글 삭제 처리
		@RequestMapping(value = "NoticeBoardController/deleteNoticeBoard.do", method = RequestMethod.GET)
		public String deleteNoticeBoard(Locale locale, Model model, HttpServletRequest request) {
			
			// 뷰에서 글 번호를 받아옵니다.
			int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
			// 글번호에 맞는 게시글을 삭제합니다.
			noticeBoardService.deleteNoticeBoard(boardNumber);
			// 글 목록으로 이동합니다.
			return "redirect:/NoticeBoardController/notice.do";
		}
		
		
		// 댓글 등록후 호출되는 메서드
		@RequestMapping(value = "NoticeBoardController/commentList.do", method = RequestMethod.GET)
		public String commentList(Locale locale, Model model, HttpServletRequest request) {
			
			// 뷰에서 글 번호를 받아옵니다.
			int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
			int commentCount = Integer.parseInt(request.getParameter("commentCount"));
			// 글번호에 맞는 게시글을 받아옵니다.
			NoticeBoard noticeBoard = noticeBoardService.getNoticeBoard(boardNumber);
			// 해당하는 게시글에 댓글목록을 받아옵니다.
			ArrayList<NoticeComment> commentList = getCommentList(boardNumber);
		
			// 뷰에서 사용할수있도록 모델에 등록시킵니다.
			model.addAttribute("noticeBoard", noticeBoard);
			model.addAttribute("commentList", commentList);
			model.addAttribute("commentCount", commentCount);
			
			return "notice/viewContents.do";
		}
		
		// 댓글 처리
		@RequestMapping(value = "NoticeBoardController/commentNoticeBoard.do", method = RequestMethod.POST)
		public String commentNoticeBoard(Locale locale, Model model, HttpServletRequest request) throws UnsupportedEncodingException {
					
			// 뷰에서 글 내용, 글번호를 받아옵니다.
			request.setCharacterEncoding("utf-8");
			String contents = request.getParameter("comment");
			int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
		
			// 사용자 정보를 받아옵니다.
			User user = (User) request.getSession().getAttribute("user");
			// 현재 시간을 받아옵니다.
			java.util.Date utilDate = new java.util.Date();
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
			// DAO를 만듭니다.
			NoticeComment comment = new NoticeComment(sqlDate, contents, boardNumber,
					user.getUserNumber(), user.getUserAlias());
			
			noticeBoardService.registComment(comment);
			// 글번호에 맞는 게시글을 받아옵니다.
			NoticeBoard noticeBoard = noticeBoardService.getNoticeBoard(boardNumber);
			// 글번호에 해당하는 댓글갯수를 받아옵니다.
			int commentCount = getCommentList(noticeBoard.getBoardNumber()).size();
			// 뷰에서 사용할수있도록 모델에 등록시킵니다.	
			
			model.addAttribute("commentCount", commentCount);
				
			return "redirect:/NoticeBoardController/commentList.do?boardNumber="+boardNumber+"&commentCount="+commentCount;
		}
		
		// 댓글 목록을 가져오는 메서드
		public ArrayList<NoticeComment> getCommentList(int boardNumber ) {
			
			// 글번호에 맞는 댓글리스트를 받아옵니다.
			ArrayList<NoticeComment> commentList = noticeBoardService.getCommentList(boardNumber);
			
			return commentList;
		}
	
			
}
