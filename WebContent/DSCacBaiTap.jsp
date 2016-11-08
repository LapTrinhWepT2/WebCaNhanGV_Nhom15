<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Danh sách các bài tập</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src = "bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>	
	
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-10 col-xs-12">
				<h2><b>LẬP TRÌNH WEB</b></h2>
				<p>Đây là nơi lưu trữ tất cả Bài tập thuộc bộ môn này</p>
				<table class="table table-striped table-hover bangDeThi">
					<thead>
						<tr>
							<th>Danh sách các bài tập</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href=""><span class="glyphicon glyphicon-pencil"></span>Bài tập số 1</a></td>							
						</tr>
						<tr>
							<td><a href=""><span class="glyphicon glyphicon-pencil"></span>Bài tập số 2</a></td>	
						</tr>
						<tr>
							<td><a href=""><span class="glyphicon glyphicon-pencil"></span>Bài tập số 3</a></td>	
						</tr>
					</tbody>	
				</table>
			</div>
			<div class="col-md-4 col-sm-10 col-xs-12">
				
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>