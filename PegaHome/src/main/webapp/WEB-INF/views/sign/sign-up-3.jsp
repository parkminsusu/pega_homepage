<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>회원가입 페이지</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function idCheck() {

		var text = $("#id").val();
		var regexp = /[0-9a-zA-Z]/; // 숫자,영문,특수문자

		for (var i = 0; i < text.length; i++) {
			if (text.charAt(i) != " " && regexp.test(text.charAt(i)) == false) {
				alert("한글이나 특수문자는 입력불가능 합니다.");
				return false;
			}
		}

		overlapCheck();

	}

	function overlapCheck() {

		var param = "id" + "=" + $("#id").val();
		
		if ($("#id").val() == '' || $("#id").val() == null) {
			alert("아이디를 입력하세요");
			return false;
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/UserController/idcheck.do",
			type : "GET",
			data : param,
			cache : false,
			async : false,
			dataType : "text",

			success : function(response) {
				if (response == '0') {
					count = 1;
					alert("사용가능한 아이디 입니다.")
				} else {
					alert("아이디가 중복 됩니다. 다시 입력 해주세요");
					document.getElementsByName('id')[0].value = "";
					document.getElementsByName('id')[0].focus();
					return false;
				}
			},
			error : function(request, status, error) {
				if (request.status != '0') {
					alert("code : " + request.status + "\r\nmessage : "
							+ request.reponseText + "\r\nerror : " + error);
				}
			}

		});
	}

	function passwordcheck() {
		var password = document.getElementsByName('password')[0].value;
		var passwordcheck = document.getElementsByName('checkpassword')[0].value;

		if (password != passwordcheck) {
			alert("비밀번호가 일치하지 않습니다.");
			document.getElementsByName('checkpassword')[0].value = "";
		}
	}
	
	function inputCheck(){
		var part = document.getElementsByName('part')[0].value;
		var th = document.getElementsByName('th')[0].value;
		
		if(part == "Part"){
			alert("파트를 선택 해주세요.");
			document.getElementsByName('part')[0].focus();
			return false;
		}
		if(th == "0"){
			alert("기수를 선택 해주세요.");
			document.getElementsByName('th')[0].focus();
			return false;
		}
	}
	
</script>
</head>

<body>
	
	<!-- Essential styles -->

	<link rel="stylesheet"
		href="../resources/font-awesome/css/font-awesome.min.css"
		type="text/css">



	<!-- MAIN WRAPPER -->
	<div class="body-wrap">
		<!-- This section is only for demonstration purpose only. Check out the docs for more informations" -->
		<div id="divStyleSwitcher" class="style-switcher-slidebar">
			<a href="#" id="cmdShowStyleSwitcher" class="open-panel hidden-xs"><i
				class="fa fa-cog"></i></a>
			<div class="switch-panel">
				<h3>Boomerang - Style Builder</h3>
				<div class="panel-section">
					<h4 class="title text-uppercase font-normal">Layout options</h4>

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>I prefer it:</label> <select id="cmbLayoutStyle"
									class="form-control">
									<option value="1">Fluid</option>
									<option value="2">Boxed</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label></label> <select id="cmbLayoutColor" class="form-control">
									<option value="1">Light</option>
									<option value="2">Dark</option>
								</select>
							</div>
						</div>
					</div>

					<label class="mt-10">Predefined body backgrounds</label> <span
						class="clearfix"></span> <span id="cmbBodyBg" class="color-switch">
						<a href="#" id="cmdBodyBg1" class="body-bg-1 ttip"
						data-toggle="bottom" title="Solid color"></a> <a href="#"
						id="cmdBodyBg2" class="body-bg-2 ttip" data-toggle="bottom"
						title="Black Lozenge"></a> <a href="#" id="cmdBodyBg3"
						class="body-bg-3 ttip" data-toggle="bottom" title="Squairy Light"></a>
						<a href="#" id="cmdBodyBg4" class="body-bg-4 ttip"
						data-toggle="bottom" title="Dark Dotted"></a> <a href="#"
						id="cmdBodyBg5" class="body-bg-5 ttip" data-toggle="bottom"
						title="Skulls"></a> <a href="#" id="cmdBodyBg6"
						class="body-bg-6 ttip" data-toggle="bottom"
						title="Image Background - 1"></a> <a href="#" id="cmdBodyBg7"
						class="body-bg-7 ttip" data-toggle="bottom"
						title="Image Background - 2"></a> <span class="clearfix"></span>
					</span>

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>Section title:</label> <select id="cmbSectionTitleStyle"
									class="form-control">
									<option value="1">Style 1</option>
									<option value="2">Style 2</option>
									<option value="3">Style 3</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label>Color:</label> <select id="cmbSectionTitleColor"
									class="form-control" disabled="disabled">
									<option value="1">Base</option>
									<option value="2">Alt Base</option>
									<option value="3">Light</option>
									<option value="4">Dark</option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<hr>

				<div class="panel-section">
					<h4 class="title text-uppercase font-normal">Header options</h4>

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>Header:</label> <select id="cmbHeaderStyle"
									class="form-control">
									<option value="2">Header 1: Default navbar</option>
									<option value="3">Header 2: Default navbar + Top
										header</option>
									<option value="1">Header 3: Header + Navbar</option>
									<option value="4">Header 4: Cover</option>
									<!-- 
                            <option value="5">Header 1: Default + Mobile nav 2</option>
                            <option value="6">Header 2: Default + Top header + Mobile nav 2</option>
                            <option value="7">Header 3: Header + Navbar + Mobile nav 2</option>
                            <option value="8">Header 4: Cover</option> -->
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label>Top header color:</label> <select id="cmbTopHeaderColor"
									class="form-control" disabled="disabled">
									<option value="1">Light</option>
									<option value="2">Dark</option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="panel-section">
					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>Nav shadow</label> <select id="cmbNavShadow"
									class="form-control">
									<option value="1">No</option>
									<option value="2">Yes</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label>Dropdown arrow:</label> <select id="cmbNavDropdownArrow"
									class="form-control">
									<option value="2">Yes</option>
									<option value="1">No</option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<hr>

				<div class="panel-section">
					<h4 class="title text-uppercase font-normal">Color options</h4>

					<label>Predefined colors</label> <span class="clearfix"></span> <span
						class="color-switch"> <a href="#" id="cmdSchemeRed"
						class="color-red" title="Red">Red</a> <a href="#"
						id="cmdSchemeViolet" class="color-violet" title="Violet">Violet</a>
						<a href="#" id="cmdSchemeBlue" class="color-blue" title="Blue">Blue</a>
						<a href="#" id="cmdSchemeGreen" class="color-green" title="Green">Green</a>
						<a href="#" id="cmdSchemeYellow" class="color-yellow"
						title="Yellow">Yellow</a> <a href="#" id="cmdSchemeOrange"
						class="color-orange" title="Orange">Orange</a>
					</span>
				</div>

				<hr>

				<div class="panel-section">
					<h4 class="title">
						<span class="text-uppercase font-normal">Special</span> <a
							href="#" class="pop" title="About customization"
							data-content="We created some examples that show you the multitude of options you have so you make this template as you wish. <br><br>Customization is very easy and it is made in only one file.">
							<i class="fa fa-question-circle"></i>
						</a> <label class="badge base pull-right">New</label>
					</h4>

					<label>Predefined schemes</label> <span class="clearfix"></span> <span
						class="color-switch"> <a href="#" id="cmdSchemeBW"
						class="color-bw ttip" data-toggle="top" title="Black & White">Black
							and white</a> <a href="#" id="cmdSchemeDark" class="color-dark ttip"
						data-toggle="top" title="Dark">Dark</a> <a href="#"
						id="cmdSchemeFlat" class="color-flat ttip" data-toggle="top"
						title="Flat">Flat</a>
					</span>

				</div>

				<div class="panel-section mt-15 hide">
					<a href="#"><span>Reset all applied styles</span></a> <br> <br>
				</div>

			</div>
		</div>

		<!-- Optional header components (ex: slider) -->

		<!-- MAIN CONTENT -->
		<div class="pg-opt">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h2>Sign up</h2>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li><a href="#">Pages</a></li>
							<li class="active">Sign up</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<br/><br/>
		<section class="slice slice-lg bg-image"
			style="background-image:url(../resources/images/backgrounds/full-bg-1.jpg)">
		<div class="wp-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3">
						<div class="wp-block default user-form user-form-alpha no-margin">
							<div class="form-header">
								<h2>Create your own account</h2>
							</div>
							<div class="form-body">



								<!-- form 시작  -->



								<form
									action="${pageContext.request.contextPath}/UserController/insert.do"
									id="joinForm" class="sky-form" method="post">
									<fieldset class="no-padding">
										<section class="">
										<div class="row">
											<div class="col-xs-6">
												<div class="form-group">
													<label class="input"> <i
														class="icon-append fa fa-user"></i> <input type="text"
														name="id" id="id" placeholder="ID" required>
													</label>
													<input class="btn btn-info" type="button" value="중복확인" onclick='idCheck()' style="margin-left: 258px;">
												</div>
											</div>
											
											<div class="col-xs-6">
												<div class="form-group">
													<div class="form-group">
														<label class="input"> <i
															class="icon-append fa fa-envelope-o"></i> <input
															type="email" name="email" placeholder="E-mail" required>

														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="input"> <i
														class="icon-append fa fa-lock"></i> <input type="password"
														name="password" placeholder="Password" required>

													</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="input"> <i
														class="icon-append fa fa-lock"></i> <input type="password"
														name="checkpassword" placeholder="Check Password" required
														onblur="passwordcheck();">

													</label>
												</div>
											</div>
										</div>
										</section>

										<section class="no-margin">
										<div class="row">
											<section class="col-xs-6"> <label class="input">
												<i class="icon-append fa fa-user"></i> <input type="text"
												name="name" placeholder="Name" required>
											</label> </section>
											<section class="col-xs-6"> <label class="input">
												<i class="icon-append fa fa-user"></i> <input type="tel"
												name="phone" placeholder="Phone" required>
											</label> </section>
											<section class="col-xs-6"> <label class="input">
												<i class="icon-append fa fa-user"></i> <input type="text"
												name="alias" placeholder="Nickname" required>
											</label> </section>
										</div>

										</section>
									</fieldset>

									<fieldset>
										<div class="row">
											<section class="col-xs-4"> <label class="select">
												<select name="part" onblur="inputCheck();">
													<option value="Part">파트</option>
													<option value="Vocal">Vocal</option>
													<option value="Guitar">Guitar</option>
													<option value="Bass">Bass</option>
													<option value="Drum">Drum</option>
													<option value="Keybord">Keybord</option>
													<option value="Engeneer">Engeneer</option>
											</select> <i></i>
											</label> </section>

											<section class="col-xs-2"> <label class="select">
												<select name="th" onblur="inputCheck();">
													<option value="0">기수</option>
													<%
														for (int i = 1; i <= 50; i++) {
													%>
													<option value=<%=i%>><%=i%></option>
													<%
														}
													%>


											</select> <i></i>
											</label> </section>


										</div>

										<br /> <br />
										<section>
										<div class="row">
											<div class="col-md-8"></div>
											<div class="col-md-4">

												<button id="join"
													class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right"
													type="submit" onclick="javascript:formCheck();">
													<span>Register now</span>
												</button>
											</div>
										</section>
									</fieldset>
								</form>
							</div>
							<div class="form-footer">
								<p>
									Already have an account? <a href="sign-in-1.html">Click
										here to sign in.</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
</body>
</html>