<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.co.pega.user.User" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow">
<!-- Essential styles -->
<link rel="stylesheet"
	href="resources/assets/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet"
	href="resources/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet"
	href="resources/assets/fancybox/jquery.fancybox.css?v=2.1.5"
	media="screen">

<!-- Boomerang styles -->
<link id="wpStylesheet" type="text/css"
	href="resources/css/global-style.css" rel="stylesheet" media="screen">

 
<!-- Favicon -->
<link href="resources/images/favicon.png" rel="icon" type="image/png">

<!-- Assets -->
<link rel="stylesheet"
	href="resources/assets/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="resources/assets/owl-carousel/owl.theme.css">
<link rel="stylesheet"
	href="resources/assets/sky-forms/css/sky-forms.css">

<!-- Required JS -->
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>

<!-- Page scripts -->
<link rel="stylesheet"
	href="resources/assets/layerslider/css/layerslider.css" type="text/css">


<!-- HEADER -->
<div id="divHeaderWrapper">
	<header class="header-standard-2">
		<!-- MAIN NAV -->
		<div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button"
						class="navbar-toggle navbar-toggle-aside-menu">
						<i class="fa fa-outdent icon-custom"></i>
					</button>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<i class="fa fa-bars icon-custom"></i>
					</button>

					<a class="navbar-brand" href="${pageContext.request.contextPath}/LinkController/index.do"
						title="Boomerang | One template. Infinite solutions"> <img
						src="resources/images/boomerang-logo-black.png"
						alt="Boomerang | One template. Infinite solutions">
					</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden-md hidden-lg">
							<div class="bg-light-gray">
								<form class="form-horizontal form-light p-15" role="form">
									<div class="input-group input-group-lg">
										<input type="text" class="form-control"
											placeholder="I want to find ..."> <span
											class="input-group-btn">
											<button class="btn btn-white" type="button">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
						</li>
						
							<%  
							if(session.getAttribute("user")==null){
							%>	
									<a href="${pageContext.request.contextPath}/LinkController/signin.do" class="btn btn-base">로그인</a>
									<a href="${pageContext.request.contextPath}/LinkController/signup.do" class="btn btn-base">회원가입</a>					
							<% }
							else{
								User user = (User)session.getAttribute("user");%>
								<span><%=user.getUserName()%> 님 환영합니다.</span> 
						     	<a href="${pageContext.request.contextPath}/UserController/logout.do" class="btn btn-base">로그아웃</a>	
							<%}%>
							
							
						<li class="dropdown dropdown-meganav mega-dropdown-fluid"><a
							href="${pageContext.request.contextPath}/NoticeBoardController/notice.do" class="dropdown-toggle">Notice</a></li>
						<li class="dropdown"><a
							href="#"
							class="dropdown-toggle">Photo</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle">Video</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle">FreeBoard</a></li>
						<li class="dropdown dropdown-meganav mega-dropdown-fluid"><a
							href="${pageContext.request.contextPath}/LinkController/member.do" class="dropdown-toggle">Member</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle">Guest</a></li>

						<li class="dropdown dropdown-aux animate-click"
							data-animate-in="animated bounceInUp"
							data-animate-out="animated fadeOutDown" style="z-index: 500;">
							<a href="#" class="dropdown-form-toggle" data-toggle="dropdown"><i
								class="fa fa-search"></i></a>
							<ul class="dropdown-menu dropdown-menu-user animate-wr">
								<li id="dropdownForm">
									<div class="dropdown-form">
										<form class="form-horizontal form-light p-15" role="form">
											<div class="input-group">
												<input type="text" class="form-control"
													placeholder="I want to find ..."> <span
													class="input-group-btn">
													<button class="btn btn-base" type="button">Go</button>
												</span>
											</div>
										</form>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown-aux"><a href="#" id="cmdAsideMenu"
							class="dropdown-toggle dropdown-form-toggle"
							title="Open slidebar"> <i class="fa fa-outdent"></i>
						</a></li>
					</ul>

				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</header>
</div>
