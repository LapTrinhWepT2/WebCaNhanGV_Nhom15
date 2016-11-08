<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Danh sách sinh viên - Điểm</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>	
	
	<div class="container">
	    <div class="row">
	    	<div class="panel-group">
	    		<div class="panel panel-info">
	    			<div class="panel-heading">
	    				Khóa học
	    			</div>
	    			<div class="panel-body">
	    				Khóa học lập trình web chiều thứ 2
	    			</div>
	    		</div>
	    		<div class="panel panel-default">
	    			<div class="panel-heading">
	    				Danh sách sinh viên
	    			</div>
	    			<div class="panel-body">
	    				<table class= "table table-bordered">
	    					<thead>
		    					<tr  class ="success">
		    						<th>Mã SV</th>
		    						<th>Tên SV</th>
		    						<th>Bài Tập 1</th>
		    						<th>Bài tập 2</th>
		    						<th>Đề thi 1</th>
		    						<th>...</th>
	 	    					</tr>
	 	    				</thead>
	 	    				<tbody>
	 	    					<tr>
	 	    						<td>14110033</td>
	 	    						<td>Nguyễn Bá Đạt</td>
	 	    						<td>7</td>
	 	    						<td>8</td>
	 	    						<td>7</td>
	 	    						<td></td>
	 	    					</tr>
	 	    					<tr>
	 	    						<td>14110158</td>
	 	    						<td>Nguyễn Thành Phước</td>
	 	    						<td>6</td>
	 	    						<td>8</td>
	 	    						<td>9</td>
	 	    						<td></td>
	 	    					</tr>
	 	    					<tr>
	 	    						<td>14110161</td>
	 	    						<td>Trương Thanh Quang</td>
	 	    						<td>7</td>
	 	    						<td>8</td>
	 	    						<td>8</td>
	 	    						<td></td>
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