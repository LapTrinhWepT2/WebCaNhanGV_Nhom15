<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Trang chủ Website Giang Vien </title>
	<link rel="stylesheet" href="">
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
	<% if (users!=null ){ %>
	<jsp:include page="header-user.jsp"></jsp:include>
	<%} else { %>
	<jsp:include page="header.jsp"></jsp:include>
	<%} %>
	<div>
		<marquee id ="marquee_HP">
			<b>
			<font color="#FF0000">Chào</font>
			<font color="#FF2300">mừng</font>
			<font color="#FF4600" >bạn</font>
			<font color="#FF8C00" >đã</font>
			<font color="#FFAF00">đến</font>
			<font color="#FFD200" >với</font>
			<font color="#FFF500" >website</font>
			<font color="#DCff00" >cá</font>
			<font color="#B9ff00" >nhân</font>
			<font color="#96ff00" >của</font>
			<font color="#73ff00" >giảng</font>
			<font color="#50ff00" >viên</font>
			<font color="#0Aff00" >ABC!</font>
			<font color="#00ff00" ></font>
			<font color="#00ff23" ">Chúc</font>
			<font color="#00ff46" >các</font>
			<font color="#00ff8C" >bạn</font>
			<font color="#00ffAF" >có</font>
			<font color="#00ffD2" >một</font>
			<font color="#00ffF5" >ngày</font>
			<font color="#00F5ff" >làm</font>
			<font color="#00D2ff" >việc</font>
			<font color="#00AFff" >và</font>
			<font color="#008Cff" >học</font>
			<font color="#0069ff" >tập</font>
			<font color="#0046ff" >thật</font>
			<font color="#0023ff" >vui</font>
			<font color="#0000ff" >vẻ!</font>
			</b>
		</marquee>
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		        <li data-target="#myCarousel" data-slide-to="1"></li>
		        <li data-target="#myCarousel" data-slide-to="2"></li>
		        <li data-target="#myCarousel" data-slide-to="3"></li>
		    </ol>

		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">
		        <div class="item active">
		           <img src="image/1.jpg" alt="ASP.NET vs PHP">
		        </div>

		        <div class="item">
		            <img src="image/2.jpg" alt="Apple Developer" >
		        </div>

		        <div class="item">
		           <img src="image/3.png" alt="The future is landing">
		        </div>

		        <div class="item">
		           <img src="image/4.jpg" alt="TS" >
		        </div>
		    </div>

		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		        <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		        <span class="sr-only">Next</span>
		    </a>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>