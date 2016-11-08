<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Đăng Nhập</title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src= "javascript/jquery-3.1.1.min.js"></script>
	<script src = "javascript/angular.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src = "javascript/myjs.js"></script>

</head>
<body>
	<%
			UsersDao usersDao=new UsersDao();
			Users users = null;
			if(session.getAttribute("user")!= null){
				users = (Users) session.getAttribute("user");
			}
	%>
	<% if (users!=null){ %>
	<jsp:include page="header-user.jsp"></jsp:include>
	<%} else { %>
	<jsp:include page="header.jsp"></jsp:include>
	<%} %>	
	<div class="container">
		<div class="row">
			<div class="col-md-8" style="padding: 0px 35px">
				<div class="logoLogin"></div>
				<h1 ><strong>Chào mừng bạn đến trang đăng nhập!</strong></h1>
				<p style="text-align: justify;">Cảm ơn bạn đã ghé thăm trang web của tôi. Chúng ta hãy cùng nhau tìm hiểu rõ về tôi hơn thông qua website này. Thông qua website, một phần có thể giới thiệu về tôi cho mọi người biết, một phần tôi cũng muốn trang web này có thể hỗ trợ việc dạy học của tôi, giúp đỡ các bạn sinh viên trong các khóa học.</p>
				<h2><i>Hãy đăng nhập để cho tôi biết bạn là ai?</i></h2>
			</div>
			<div class="col-md-4">
				<div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
					<h2>ĐĂNG NHẬP</h2>
					
					<form action="UsersServlet" method ="POST" id="register-form" class="form-horizontal" name="form" ng-submit="register()" novalidate>
						<div class="form-group has-feedback">
							<%if(request.getParameter("loi")!=null){ %>
						  		<div>
								  	<p style ="color: red;"><%= request.getParameter("loi")%></p>
							  	</div>
							<%}%>
							<div class="input-group">
								<label for="UserName" class="input-group-addon"><i class= "glyphicon glyphicon-user"></i></label>
								<input name="user_name" type="text" class="form-control" placeholder="Tên đăng nhập" ng-model="username" ng-minlength="6" ng-maxlength="20" ng-pattern="/^[a-zA-Z]+$/" required>
								
								<i class="fa fa-check text-success"
								 ng-show="form.user_name.$dirty && form.user_name.$valid">
								</i>
							</div>
							<div ng-show="form.user_name.$dirty && form.user_name.$invalid"
							 	class="text-danger">
								<i class="fa fa-times text-danger"></i>
							 	<span ng-show="form.user_name.$error.required">
							   		Họ tên không được bỏ trống
							 	</span>
							 	<span ng-show="form.user_name.$error.minlength">
							    	Họ tên phải dài hơn 6 kí tự
							 	</span>
							 	<span ng-show="form.user_name.$error.maxlength">
							   		Họ tên phải ngắn hơn 20 kí tự
							 	</span>
							 	<span ng-show="form.user_name.$error.pattern">
							   		Họ tên chỉ bao gồm các kí tự chữ cái
							 	</span>
							</div>
						</div>
						
						<div class="form-group">
							<div class="input-group">
								<label for="inputPassword" class="input-group-addon"><i class=" glyphicon glyphicon-lock"></i></label>
								<input name="user_pass" ng-model="password" type="password" class="form-control" placeholder="Mật khẩu" ng-minlength="6" ng-maxlength="30" required>
								<i class="fa fa-check text-success" ng-show="form.user_pass.$dirty && form.user_pass.$valid">
								</i>
							</div>
							<div ng-show="form.user_pass.$dirty && form.user_pass.$invalid" class="text-danger">
								<i class="fa fa-times text-danger"></i>
								<span ng-show="form.user_pass.$error.required">
								Mật khẩu không được bỏ trống
								</span>
								<span ng-show="form.user_pass.$error.minlength">
								Mật khẩu phải dài hơn 6 kí tự
								</span>
								<span ng-show="form.user_pass.$error.maxlength">
								Mật khẩu phải ngắn hơn 30 kí tự
								</span>
							</div>
						</div>
						<div class="checkbox">
							<div class="row">
								<div class="col-md-7">
									<label><input type="checkbox">Ghi nhớ đăng nhập</label>
								</div>
								<div class="col-md-5" id="quenmatkhaulink">
									<a href="" data-target="#QuenMKModal" data-toggle="modal">Quên mật khẩu</a>									
								</div>
								<div class = "modal fade" id="QuenMKModal"  tabindex="-1">
									<div class="modal-dialog ">
										<div class="modal-content">
											<div class="modal-header">
												<button class = "close" data-dismiss = "modal" >&times;</button>
												<h4 class = "modal-title">Quên mật khẩu</h4>
											</div>
											<div class="modal-body">
												<p>Bạn vui lòng nhập tên tài khoản của mình và Email đăng ký vào đây để lấy lại mật khẩu mới.</p>
												<form class = "form-horizontal">
												   	<div class="form-group">
												        <label for="lmk_name" class = "col-xs-3 control-label">Tên đăng nhập:</label>
												        <div class="col-xs-9"> 
												        	<input type="text" name="lmk_name" class="form-control" placeholder="Username"> 
												        </div>		       
												    </div>
													<div class="form-group">
												        <label for="lmk_email" class = "col-xs-3 control-label">Email đăng ký:</label>
												        <div class="col-xs-9"> <input type="text" name="lmk_email" class="form-control" placeholder="Email"> </div>		       
												    </div>									    
												</form>
												<p>Vui lòng check email để lấy lại mật khẩu</p>
											</div>											
											<div class="modal-footer">
												<input type = "hidden" value = "layMK" name ="command2">
												<input type = "submit" value ="Lấy lại mật khẩu" class="btn btn-primary">
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type = "hidden" value ="login" name="command">
							<input type = "submit" value ="Đăng nhập" class="btn btn-primary pull-right" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">
						</div>
							
					</form>
					<hr>					
					<!-- <a href=""><button class="btn btn-primary pull-right" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">Đăng nhập</button></a> -->
				</div>
			</div><!-- /Form Dang nhap -->
		</div><!-- /row -->
	</div><!--  -->
	<br><br><br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>