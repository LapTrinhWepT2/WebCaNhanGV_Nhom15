<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Khóa học</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src = "bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class = "row">
			<div class="col-md-8 col-sm-10 col-xs-12">
				<div class ="chude">
					<div class="row header">
						<div class="subject" role = "heading">
							<h4>Nhận xét về các yêu cầu mà thầy - cô cho sinh viên làm</h4>
						</div>
						<div class="author" role = "heading">
							bởi Đặng Thị Kim Giao - 23/10/2016 23:59:59
						</div>				
					</div>
					<div class="row maincontent">
						<div class = "noidungchude" id="">
							<p> Các em hãy nhận xét về các yêu cầu mà thầy - cô cho sinh viên làm. Có nhẹ lắm hay cần thêm bài tập để phát triển tư duy lập trình nâng cao?<br></p> 
						</div>
					</div>
					<div class="row side">
						<div class="commands">
							<a href="" data-target="#themBinhLuan" data-toggle="modal">Reply</a>
						</div>							
					</div>
				</div>
				<!-- /Phần nội dung của bình luận -->
				<div class = "binhluan">
					<div class="row header">
						<div class="subject" role = "heading">
							<h4>Re: Nhận xét về các yêu cầu mà thầy - cô cho sinh viên làm</h4>
						</div>
						<div class="author" role = "heading">
							bởi Nguyễn Thành Phước - 24/10/2016 00:02:25
						</div>				
					</div>
					<div class="row maincontent">
						<div class = "noidungchude" id="">
							<p> Tình hình tôi nghĩ không ổn? Tôi sẽ nhận xét kỹ hơn trong phần đánh giá giảng viên!<br></p> 
						</div>
					</div>
					<div class="row side">
						<div class="commands">
							<a href="" data-target="#themBinhLuan" data-toggle="modal">Reply</a>
						</div>							
					</div>
				</div>
				<div class = "binhluan">
					<div class="row header">
						<div class="subject" role = "heading">
							<h4>Re: Nhận xét về các yêu cầu mà thầy - cô cho sinh viên làm</h4>
						</div>
						<div class="author" role = "heading">
							bởi Nguyễn Thành Phước - 24/10/2016 00:02:25
						</div>				
					</div>
					<div class="row maincontent">
						<div class = "noidungchude" id="">
							<p>Bài tập hình như hơi nhiều, nhưng mà cố gắng làm thì cũng hết, nhưng...<br></p> 
						</div>
					</div>
					<div class="row side">
						<div class="commands">
							<a href="" data-target="#themBinhLuan" data-toggle="modal">Reply</a>
						</div>							
					</div>
				</div>
			</div>
			
			<div class = "modal fade" id="themBinhLuan"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button class = "close" data-dismiss = "modal" >&times;</button>
							<h4 class = "modal-title">Bình luận nội dung</h4>
						</div>
						<div class="modal-body">
							<form class ="form-horizontal">
								<div class = "form-group">
									<label for="inputSubject" class = "col-sm-2 control-label">Chủ đề: </label>
									<div class="col-sm-10">
										<input class = "form-control" value="Re: Phần này là nội dung của bình luần trả lời" placeholder="Nhập tiêu đề thảo luận" type="text" id = "inputSubject" >
									</div>
								</div>
								<div class="form-group">
									<label for="inputMainContent" class = "col-sm-2 control-label">Nội dung: </label>
									<div class="col-sm-10">
										<textarea  class= "form-control" id="inputMainContent" rows="15"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="inputAttachment" class = "col-sm-2">Tệp đính kèm: </label>
									<div class="col-sm-10">
										<input id="inputAttachment" type="file" class="file form-control">
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button class = "btn btn-primary">Đăng bình luận</button>
							<button class = "btn btn-primary" data-dismiss="modal">Hủy</button>
						</div>
					</div>
				</div>
			</div><!-- /Bình luận của sinh viên hoặc giảng viên -->


			<div class="col-md-4 col-sm-10 col-xs-12">
				<div class="panel panel-success">
        			<div class="panel-heading">
        				<div class="row">
        					<div class="col-md-6">
        						Chủ đề thảo luận khác
        					</div>
        					<div class="col-md-6">
        						<a class="editInfo" href="#" data-target = "#themchudeModal" data-toggle="modal"><span class="glyphicon glyphicon-edit"></span>Thêm Thảo luận</a>
      						</div>
        				</div>		        			
	        		</div>
	        		<div class="panel-body">
	        			<ul>
	        				<li><a href="">Tình hình dong hoc phi khoa hoc lap trinh online</a></li>
	        				<li><a href="">Bài tập 3 Khó</a></li>
	        			</ul>
	        		</div>
        		</div>
        		<div class = "modal fade" id="themchudeModal"  tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button class = "close" data-dismiss = "modal" >&times;</button>
								<h4 class = "modal-title">Thêm chủ đề thảo luận mới</h4>
							</div>
							<div class="modal-body">
								<form class ="form-horizontal">
									<div class = "form-group">
										<label for="inputSubject" class = "col-sm-2 control-label">Chủ đề: </label>
										<div class="col-sm-10">
											<input class = "form-control" placeholder="Nhập tiêu đề thảo luận" type="text" id = "inputSubject" >
										</div>
									</div>
									<div class="form-group">
										<label for="inputMainContent" class = "col-sm-2 control-label">Nội dung: </label>
										<div class="col-sm-10">
											<textarea  class= "form-control" id="inputMainContent" rows="15"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label for="inputAttachment" class = "col-sm-2">Tệp đính kèm: </label>
										<div class="col-sm-10">
											<input id="inputAttachment" type="file" class="file form-control">
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button class = "btn btn-primary">Đăng chủ đề</button>
								<button class = "btn btn-primary" data-dismiss="modal">Hủy</button>
							</div>
						</div>
					</div>
				</div><!-- /Phần modal-fade -->
			</div> <!-- /Phần sidebar -->
		</div>
	</div><!-- /container -->
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>