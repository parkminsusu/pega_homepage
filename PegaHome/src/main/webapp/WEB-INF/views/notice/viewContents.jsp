<%@page import="kr.co.pega.board.notice.NoticeBoardServiceImpl"%>
<%@page import="kr.co.pega.board.notice.NoticeBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="kr.co.pega.board.notice.NoticeBoard"%>
<%@ page import="kr.co.pega.board.notice.NoticeBoardServiceImpl"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="kr.co.pega.user.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>공지사항 게시판입니다.</title>

<!-- CSS FILES -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet" type="text/css" href="../resources/css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="../resources/css/layout/wide.css"
	data-name="layout">

<script type="text/javascript">
	function deleteBoard() {
		if (confirm('정말 삭제하시겠어요?')) {
			location.href = "${pageContext.request.contextPath}/NoticeBoardController/deleteNoticeBoard.do?boardNumber=${noticeBoard.boardNumber}";
		}
	}
</script>

<!-- 글쓴이 번호와 이름, 로그인한 회원을 받아옴 -->
<c:set var="userNumber" value="${noticeBoard.userNumber}" />
<c:set var="userAlias" value="${noticeBoard.userAlias}" />
<c:set var="boardNumber" value="${noticeBoard.boardNumber}" />
<%
	int userNumber = (Integer) pageContext.getAttribute("userNumber");
	String userAlias = (String) pageContext.getAttribute("userAlias");
	int boardNumber = (Integer) pageContext.getAttribute("boardNumber");
	User user = (User) session.getAttribute("user");
%>

</head>


<link rel="stylesheet"
	href="../resources/font-awesome/css/font-awesome.min.css"
	type="text/css">
<!-- MAIN CONTENT -->
<div class="pg-opt">
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<h2>공지사항</h2>
			</div>
			<div class="col-xs-6">
				<ol class="breadcrumb">
					<li><a>Home</a></li>
					<li><a>Notice</a></li>
				</ol>
			</div>
		</div>
	</div>
</div>

<br />
<br />

<c:set var="boardDate" value="${noticeBoard.boardDate}" />
<% 
	Date date = (Date)pageContext.getAttribute("boardDate"); 
	DateFormat sdFormat = new SimpleDateFormat("yyyy년 MM월 dd일 hh시");
	String tempDate = sdFormat.format(date);
	String month = tempDate.substring(6,8);
	String day = tempDate.substring(11,12);
	int monthTemp = Integer.parseInt(month);
%>
<%
	switch(monthTemp){
		case 1:
			month = "Jan";break;
		case 2:
			month = "Feb";break;
		case 3:
			month = "Mar";break;
		case 4:
			month = "Apr";break;
		case 5:
			month = "May";break;
		case 6:
			month = "Jun";break;
		case 7:
			month = "Jul";break;
		case 8:
			month = "Aug";break;
		case 9:
			month = "Sep";break;
		case 10:
			month = "Oct";break;
		case 11:
			month = "Nov";break;
		case 12:
			month = "Dec";
	}
%>	

<section class="content blog" style="margin-left : 25px;">
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div class="blog_single">
				<article class="post"> 
				<div class="post_date">
					<span class="day"><%= day %></span> <span class="month"><%= month %></span>
				</div>
				<div class="post_content">
					<div class="post_meta">
						<h2>
							<a href="#">${noticeBoard.boardTitle}</a>
						</h2>
						<div class="metaInfo">
							<span><i class="fa fa-calendar"></i> <a href="#">
							<%= tempDate%></a> </span> <span><i class="fa fa-user"></i> By <a
								href="#">${noticeBoard.userAlias}</a> </span>
								<span><i class="fa fa-comments"></i> <a href="#">${commentCount } Comments</a></span>
						</div>
					</div>
					<p>${noticeBoard.boardContent}</p>

				</div>
				
				<br/><br/><br/><br/><br/>
				
				<ul class="shares">
					<li class="shareslabel"><h3>Share This Story</h3></li>
					<li><a class="twitter" href="#" data-placement="bottom"
						data-toggle="tooltip" title="Twitter"></a></li>
					<li><a class="facebook" href="#" data-placement="bottom"
						data-toggle="tooltip" title="Facebook"></a></li>
					<li><a class="gplus" href="#" data-placement="bottom"
						data-toggle="tooltip" title="Google Plus"></a></li>
					<li><a class="pinterest" href="#" data-placement="bottom"
						data-toggle="tooltip" title="Pinterest"></a></li>
					<li><a class="yahoo" href="#" data-placement="bottom"
						data-toggle="tooltip" title="Yahoo"></a></li>
					<li><a class="linkedin" href="#" data-placement="bottom"
						data-toggle="tooltip" title="LinkedIn"></a></li>
				</ul>
				</article>
				<div class="about_author">
					<div class="author_desc">
						<img src="../resources/images/blog/author.png" alt="about author">
						<ul class="author_social">
							<li><a class="fb" href="#." data-placement="top"
								data-toggle="tooltip" title="Facbook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twtr" href="#." data-placement="top"
								data-toggle="tooltip" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a class="skype" href="#." data-placement="top"
								data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
						</ul>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>
<span style="margin-left: 1000px;"> <a
	href="${pageContext.request.contextPath}/NoticeBoardController/notice.do"
	class="btn btn-base">목록</a>
	<%
 	// 글쓴이와 일치해야 수정과 삭제버튼이 보임
 	if (user != null && user.getUserNumber() == userNumber) {
 %> <a
	href="${pageContext.request.contextPath}/NoticeBoardController/updateNoticeBoard.do?boardNumber=${noticeBoard.boardNumber}"
	class="btn btn-base">수정</a> <a class="btn btn-base"
	onclick="deleteBoard()">삭제</a> <%
 	}
 %>

</span>
</section>

<br>
<br>
<br>

<div class="news_comments">
	<div class="dividerHeading">
		<h4>
			<span>Comments (${commentCount})</span>
		</h4>
	</div>
	<c:forEach var="comment" items="${commentList}">
		<div id="comment">
			<ul id="comment-list">
				<li class="comment">
					<div class="avatar">
						<img alt="" src="../resources/images/blog/avatar_1.png"
							class="avatar">
					</div>
					<div class="comment-container">
						<h4 class="comment-author">
							<a href="#">${comment.user_alias}</a></span>
						</h4>
						<div class="comment-meta">
							<a href="#" class="comment-date">${comment.nc_date}</a><a
								class="comment-reply-link" href="#respond"></a>
						</div>
						<div class="comment-body">
							<p>${comment.nc_content}</p>
						</div>
					</div>
				</li>

			</ul>
		</div>
	</c:forEach>


	<%
		// 로그인이 되어있을때에만 댓글쓰기가 보임
		if (user != null) {
	%>
	<!-- /#comments -->
	<div class="dividerHeading">
		<h4>
			<span>Leave a comment</span>
		</h4>
	</div>

	<form
		action="${pageContext.request.contextPath}/NoticeBoardController/commentNoticeBoard.do"
		method="post">
		Name:
		<%=user.getUserAlias()%>
		<br /> <br /> <input type="hidden" name="boardNumber"
			value="<%=boardNumber%>">
		<div class="comment-box row">
			<div class="col-sm-12">
				<p>
					<textarea name="comment" class="form-control" rows="6" cols="40"
						id="comments"
						onfocus="if(this.value == 'Message') { this.value = ''; }"
						onblur="if(this.value == '') { this.value = 'Message'; }"
						placeholder="Message">Message</textarea>
				</p>
			</div>
		</div>
		<span style="margin-left: 970px;">
		<input align="right" class="btn btn-lg btn-default" type="submit"
			value="확인">
		</span>
	</form>
	<%
		}
	%>
</div>


</body>
</html>