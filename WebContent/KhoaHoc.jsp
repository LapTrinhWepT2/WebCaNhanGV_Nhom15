<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Khóa học</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
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
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-8 col-xs-12">
				<table class= "table table-hover bangKhoaHoc">
					<thead>
						<tr class="info">
							<th class="dskhoahoc_cell0">Các khóa học</th>
							<th>Mô tả</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="">Lập trình Web</a></td>
							<td>Lớp học trình web chiều thứ 2 hàng tuần /16 buổi. Ngày bắt đầu: 1/9/2016</td>							
						</tr>
						<tr>
							<td><a href="">Công nghệ phần mềm</a></td>
							<td>Lớp công nghệ phần mềm sáng hàng tuần /16 buổi. Ngày bắt đầu: 1/9/2016</td>							
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-6 col-sm-4 col-xs-12">
				<table class="table table-bordered bangThongBao">
					<thead>
						<tr>
							<th>Thông báo</th>
							<th>Thời gian</th>						
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Thứ 2 Ngày 31/10/2016 Nghỉ</td>
							<td>30/10/2016 9h15m36s</td>
						</tr>
					</tbody>					
				</table>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>