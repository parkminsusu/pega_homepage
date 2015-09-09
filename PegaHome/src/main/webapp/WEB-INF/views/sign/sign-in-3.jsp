<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>
	<title>로그인 페이지 입니다.</title>
</head>


	  <link rel="stylesheet" href="../resources/font-awesome/css/font-awesome.min.css" type="text/css"> 
      
            
    <!-- MAIN CONTENT -->
        <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Sign in</h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Pages</a></li>
                        <li class="active">Sign in</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
	<br/><br/>
    <section class="slice slice-lg bg-image" style="background-image:url(../resources/images/backgrounds/full-bg-1.jpg);">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                        <div class="wp-block default user-form user-form-alpha no-margin"> 
                            <div class="form-header">
                                <h2>Sign in to your account</h2>
                            </div>
                            <div class="form-body">
                                <form action="${pageContext.request.contextPath}/UserController/login.do" id="frmLogin" class="sky-form" method="post">                                    
                                    <fieldset>                  
                                        <section>
                                            <div class="form-group">
                                                <label class="label">ID</label>
                                                <label class="input">
                                                    <i class="icon-append fa fa-user"></i>
                                                    <input type=text name="id">
                                                </label>
                                            </div>     
                                        </section>
                                        <section>
                                            <div class="form-group">
                                                <label class="label">Password</label>
                                                <label class="input">
                                                    <i class="icon-append fa fa-lock"></i>
                                                    <input type="password" name="password">
                                                </label>
                                            </div>     
                                        </section> 
                                        <section>
                                            <div class="row">
                                                <div class="col-md-12">
                                                   
                                                </div>
                                            </div>
                                        </section>

                                        <section>
                                            <button class="btn btn-base btn-icon btn-icon-right btn-sign-in pull-right" type="submit">
                                                <span>로그인</span>
                                            </button>
                                        </section>
                                    </fieldset>  
                                </form>  
                            </div>
                            <div class="form-footer">
                                <p>Lost your password? <a href="#">Click here to recover.</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>