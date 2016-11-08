<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Bài Tập Nộp</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src ="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>	
	
	<div class="container">
	    <div class="row">
	    	<h1><b>Lập trình web</b></h1>
	    	<div></div>
	    	<div class="col-md-8 col-xs-12">
	    		<hr>
	    		<h3>Bài tập lập trình web số 1</h3>
	    		<div class="noidungBT">
	    			<p>Nội dung: Các chức năng của bootstrap trong bài tập lớn</p>
	    		</div>
	    		<div class="chitietBT">
	    			<hr>
	    			<h3>Tình trạng bài tập</h3>
					<table class= "table table-default">
						<tbody>
							<tr>
								<td class= "cell0">Tình trạng nộp bài</td>
								<td>Rồi</td>
							</tr>
							<tr>
								<td class= "cell0">Hạn chót</td>
								<td >Thursday, 13 October 2016, 7:00 AM</td>
							</tr>
							<tr>
								<td class ="cell0">Thời gian nộp bài</td>
								<td>Thursday, 13 October 2016, 6:59 AM</td>
							</tr>
							<tr>
								<td class ="cell0">Nội dung nộp</td>
								<td><p>Nội dung bài làm: </p>
								<p>Nội dung bài làm</p></td>
							</tr>
							<tr>
								<td class = "cell0">File</td>
								<td><a href="">link bài. . .</a></td>
							</tr>
						</tbody>
					</table>
	    		</div>
	    		<input class="col-md-offset-5 btn btn-primary" type="submit" value = "Chỉnh sủa"
	    		data-target ="#modalNopBai" data-toggle="modal">

				<div class = "modal fade" id="modalNopBai"  tabindex="-1">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button class = "close" data-dismiss = "modal" >&times;</button>
								<h4 class = "modal-title"><b>Chỉnh sửa</b></h4>
							</div>
							<div class="modal-body">
								<form>
								    <div class="form-group">
								        <label for="noidungbailam">Nội dung trình bày:</label>
								        <textarea id="noidungbailam" rows="6" placeholder="Nhập nội dung" class= "form-control"></textarea>   
								    </div>
									<div class="form-group">
										<label for="filenopbai">File: </label>
										<input type="file" id = "filenopbai" class="form-control">
									</div>									    
								</form>
							</div>
							<div class="modal-footer">
								<button class = "btn btn-primary">Nộp</button>
								<button class = "btn btn-primary" data-dismiss="modal">Hủy</button>
							</div>
						</div>
					</div>
				</div> <!-- Fade Modal -->
	    	</div>
	    	<div class="col-md-4 col-xs-12">
	    		<div class="panel panel-success">
	    			<div class="panel-heading">
	    				<b>Danh sách các bài tập khác</b>
	    			</div>
	    			<div class="panel-body">
    				 	<li>
                            <A HREF="">Bài tập 2</A>
                        </li>
                        <li>
                            <A HREF="">Bài tập 3</A>
                        </li>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>