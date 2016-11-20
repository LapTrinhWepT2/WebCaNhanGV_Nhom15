<%@page import="model.DeThi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.DeThiDAO" %>
<!DOCTYPE html>
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
<% DeThiDAO dethiDAO=new DeThiDAO(); %>

	<jsp:include page="header.jsp"></jsp:include>	
	
	<div class="container">
		<div class="row">
			<div class="col-md-7 col-sm-10 col-xs-12">
				<h2><b>LẬP TRÌNH WEB</b></h2>
				<p>Đây là nơi lưu trữ tất cả Đề thi thuộc bộ môn này</p>
				<table class="table table-striped table-hover bangDeThi">
					<thead>
						<tr>
							<th>Danh sách các đề thi</th>
						</tr>
					</thead>
					<tbody>
						<%for(DeThi dt: dethiDAO.getListDeThi()){ %>
						<tr>
							<td><a href="DeThiDemo.jsp?dethi=<%=dt.getMadethi()%>&tendethi=<%=dt.getTendethi()%>&timedethi=<%=dt.getThoigian()%>"><span class="glyphicon glyphicon-pencil"></span><%=dt.getTendethi() %></a></td>							
						</tr>
						<%}%>
						
					</tbody>	
				</table>
			</div>
			<div class="col-md-5 col-sm-10 col-xs-12">
				
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>