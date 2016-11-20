<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Danh sách các đề thi</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src = "bootstrap/js/bootstrap.min.js"></script>

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
			<div class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2">
				<h2><b>LẬP TRÌNH WEB</b></h2>			

				<div class="row">
					<div class="col-md-6">
						<table class="table">
							<tbody>
								<tr>
									<td>Đề bài:</td>
									<td>De thi giua ki 1</td>
								</tr>
								<tr>
									<td>Thời gian làm bài:</td>
									<td>15p</td>
								</tr>
								<tr>
									<td>Điểm:</td>
									<td>10</td>
								</tr>

							</tbody>
						</table>
					</div>		            
		        </div>        
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>