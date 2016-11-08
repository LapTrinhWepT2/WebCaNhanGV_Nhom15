<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Đề thi</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src = "bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>	
	
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12 dethi">
				<h3><b>Đề thi số 1</b></h3>
				<span>Thời gian làm bài: </span> 90 phút  <br>
				<input type="button" class = "btn btn-warning col-md-offset-5" value="Bắt đầu">
				<span class = "pull-right">Đồng hồ</span>
				<hr>
				<ul> Câu hỏi 1:JavaScript là ngôn ngữ xử lý ở:
					<li><span>a. </span>Client</li>
					<li><span>b. </span>Server</li>
					<li><span>c. </span>Server/client</li>
					<li><span>d. </span>Không có dạng nào.</li>
				</ul>
				<ul> Câu hỏi 2: Javascript là ngôn ngữ thông dịch hay biên dịch:
					<li><span>a. </span>Thông dịch</li>
					<li><span>b. </span>Diễn dịch</li>
					<li><span>c. </span>Server/client</li>
					<li><span>d. </span>Không có dạng nào ở trên</li>
				</ul>	
				<ul> Câu hỏi 3:Phương thức viết chương trình của Javascript như thế nào?
					<li><span>a. </span>Viết riêng một trang</li>
					<li><span>b. </span>Viết chung với HTML</li>
					<li><span>c. </span>Cả hai dạng</li>
					<li><span>d. </span>Không có dạng nào.</li>
				</ul>
			</div>
		
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>