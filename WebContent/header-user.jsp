<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>header</title>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
		<script src= "javascript/jquery-3.1.1.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</head>
	
	<body>
		<%
			UsersDao usersDao=new UsersDao();
			Users users = null;
			if(session.getAttribute("user")!= null){
				users = (Users) session.getAttribute("user");
			}
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-5 col-xs-5">
					<img src="image/logo.png" alt="" width="150px" height="40px">
				</div>
				<div class="col-md-7 col-sm-7 col-xs-7 toptieude">
					<p>Học - Học nữa - Học mãi - Học máu</p>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-inverse" >
		    <div class="container">
		        <div class="navbar-header">
		            <a class="navbar-brand" href="#">Trang chủ</a>
		        </div>
		        <ul class="nav navbar-nav">
		            <li ><a href="ThongTinCaNhanGV.jsp">Thông tin cá nhân</a>
		            </li>
		            <li ><a href="KhoaHoc.jsp">Khóa học</a>           
		            </li>
		            <li><a href="#">Tìm kiếm</a>
		            </li>
		        </ul>
		        <ul class="nav navbar-nav navbar-right">
		        	
		            <li class="navbar-right dropdown">
		            	<a href = "" class="navbar-right dropdown-toggle" data-toggle="dropdown"><span><%=users.getHovaten() %> </span><span class="caret"></span></a>
		            	<ul class = "dropdown-menu">
		            		<li><a href="">Trang cá nhân</a></li>
                            <li><a href="">Đổi mật khẩu</a></li>
                            <li><a href="">Tin nhắn</a></li>
                            <li><a href="LogoutServlet">Đăng xuất</a></li>
                        </ul>
		          
		            </li>		           
		        </ul>
		    </div>
		</nav>
	</body>
</html>