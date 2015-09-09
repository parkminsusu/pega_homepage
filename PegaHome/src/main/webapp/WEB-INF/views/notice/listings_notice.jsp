<%@page import="kr.co.pega.board.notice.NoticeBoardServiceImpl"%>
<%@page import="kr.co.pega.board.notice.NoticeBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="kr.co.pega.board.notice.NoticeBoard" %>
<%@ page import="kr.co.pega.board.notice.NoticeBoardServiceImpl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="kr.co.pega.user.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>
    <title>공지사항 게시판입니다.</title>	
</head>

	<link rel="stylesheet" href="../resources/font-awesome/css/font-awesome.min.css" type="text/css">
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
	
	
	<c:set var="countList" value="${countList}" />
	<%	
		int pageNumTemp = 1;
		int listCount = 10;
		int pagePerBlock = 10;
		int totalCount = (Integer)pageContext.getAttribute("countList");
		String pageNum = request.getParameter("pageNum");
		if (pageNum != null) {
			pageNumTemp = Integer.parseInt(pageNum);
		}
		
	%>  
	 
	<br><br>
	<div class="col-md-12">
	<table border="1" class="table table-bordered" text-align="center" >
		<colgroup>
		<col width="50" />
			<col width="300" />
			<col width="80" />
			<col width="100" />
			<col width="70" />
		</colgroup>
		<thead>
			<tr align="center">	
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>등록 일시</td>
				<td>조회수</td>	
			</tr>
			
		</thead>
		<tbody>
		
			<%
			if (totalCount == 0) {
			%>
			<tr>
				<td align="center" colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
			<%
			} else {
			int i=0;
			%>
			<c:set var="commentCount" value="${commentCount }" />
			<c:forEach var="board" items="${list}" varStatus="s">
		
			<tr align="center">
				<td>${board.boardNumber}</td>
				<td><a href="../NoticeBoardController/noticeView.do?boardNumber=${board.boardNumber}">${board.boardTitle} &nbsp;&nbsp;&nbsp;<i class="fa fa-comments" style="color:#A6A6A6;">[${commentCount[s.count - 1]}]</i></a></td>
				<td>${board.userAlias}</td>
				<td>${board.boardDate}</td>
				<td>${board.hit}</td>
			</tr>
			
			</c:forEach>
		</tbody>
		<%} %>
	</table>
	</div>
	<!-- 페이징 시작 -->
	<% 
	if(totalCount > 0) {
		int totalNumOfPage = (totalCount % listCount == 0) ? 
				totalCount / listCount :
				totalCount / listCount + 1;
		
		int totalNumOfBlock = (totalNumOfPage % pagePerBlock == 0) ?
				totalNumOfPage / pagePerBlock :
				totalNumOfPage / pagePerBlock + 1;
		
		int currentBlock = (pageNumTemp % pagePerBlock == 0) ? 
				pageNumTemp / pagePerBlock :
				pageNumTemp / pagePerBlock + 1;
		
		int startPage = (currentBlock - 1) * pagePerBlock + 1;
		int endPage = startPage + pagePerBlock - 1;
		
		if(endPage > totalNumOfPage)
			endPage = totalNumOfPage;
		boolean isNext = false;
		boolean isPrev = false;
		if(currentBlock < totalNumOfBlock)
			isNext = true;
		if(currentBlock > 1)
			isPrev = true;
		if(totalNumOfBlock == 1){
			isNext = false;
			isPrev = false;
		}
		StringBuffer sb = new StringBuffer();
		%>
		<br/><br/><br/><br/>
		 <div align="center">
         <ul class="pagination pagination-style-2">
		<% 
		if(pageNumTemp > 1){
			%>
				<li><a href="../NoticeBoardController/notice.do?pageNum=1">«</a></li>
			<% 
		}
%><% 
          
		if (isPrev) {
			int goPrevPage = startPage - pagePerBlock;
			
			%>
				<li><a href="../NoticeBoardController/notice.do?pageNum="<%=goPrevPage%>">«</a></li>
			<% 
		} else {
			
		}
		for (int i = startPage; i <= endPage; i++) {
			if (i == pageNumTemp) {
				%>
					<li class="active"><a href="#"><%=i %></a></li>
				<% 
			} else {
				%>
					<li><a href="../NoticeBoardController/notice.do?pageNum=<%=i%>"><%=i %></a></li>
				<% 
			}
		}
		if (isNext) {
			int goNextPage = startPage + pagePerBlock;
			%>
				 <li><a href="../NoticeBoardController/notice.do?pageNum=<%=goNextPage%>">»</a></li>
			<% 
		} else {
			
		}
		if(totalNumOfPage > pageNumTemp){
			%>
				<li><a href="../NoticeBoardController/notice.do?pageNum=<%=totalNumOfPage%>">»</a></li>
			<%
		}
	}
	%>
	 </ul></div>
            
    <%
    	// 로그인이 되어있을때에만 글쓰기 버튼이 보임
		User user = (User)session.getAttribute("user");
		if(user!=null){
	%>
 	<span style="margin-left:1180px;">
 	<a href="${pageContext.request.contextPath}/LinkController/noticeBoardWrite.do" class="btn btn-base">글쓰기</a>
 	</span>
 	<%} %>
	<br><br><br><br>
	      
 
</body>
</html>