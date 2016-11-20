<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<%@ page import="model.KhoaHoc" %>
<%@ page import="dao.KhoaHocDAO" %>
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
	
	<%
		KhoaHocDAO khoahocDAO=new KhoaHocDAO();
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-7 col-sm-8 col-xs-12">
				<table class= "table table-hover bangKhoaHoc">
					<thead>
						<tr class="info">
							<th class="dskhoahoc_cell0">Các khóa học</th>
							<th>Mô tả</th>
							<th>Ngày bắt đầu</th>
							<th>Ngày Kết Thúc</th>
						</tr>
					</thead>
					<tbody>
						<% for(KhoaHoc kh: khoahocDAO.getListKhoaHoc()){ %>
						<tr>
							<td><a href="KhoaHocCon.jsp?makhoahoc=<%=kh.getMakhoahoc()%>&tenkhoahoc=<%=kh.getTenkhoahoc()%>"><%=kh.getTenkhoahoc() %></a></td>
							<td><%=kh.getMotakhoahoc() %></td>
							<td><%=kh.getNgaybatdau() %></td>
							<td><%=kh.getNgayketthuc() %></td>
														
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
			<div class="col-md-5 col-sm-4 col-xs-12">
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