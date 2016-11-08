<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Đổi Mật Khẩu</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="logoChangPassword"></div>
				<h2 ><strong>Chào mừng bạn đến trang đổi mật khẩu</strong></h2>
				<h4><i>Bạn đang gặp vấn đề về bảo mật tài khoản?</i></h4>
				<h4><i>Kẻ nào đó dường như đã biết mật khẩu của bạn?</i></h4>
				<h3><i><strong>Hãy đổi mật khẩu ngay bây giờ!</strong></i></h3>
			</div>
			<div class="col-md-6">
				<h2>Đổi mật khẩu</h2>
				<form class ="form-horizontal" role="form">
					<div class="form-group">
						<label for="inputOldPass" class = "col-md-4 control-label">Nhập mật khẩu cũ:</label>
						<div class ="col-md-8">
							<input type="password" class="form-control " id="inputOldPass" placeholder="Mật khẩu cũ">
						</div>
					</div>
					<div class="form-group">
						<label for="inputNewPass" class = "col-md-4 control-label" >Nhập mật khẩu mới:</label>
						<div class ="col-md-8">
							<input type="password" class="form-control" id="inputNewPass" placeholder="Mật khẩu mới">
						</div>
					</div>
					<div class="form-group">
						<label for="inputNewPassAgain" class = "col-md-4 control-label">Nhập lại mật khẩu:</label>
						<div class ="col-md-8">
							<input type="password" class="form-control" id="inputNewPassAgain" placeholder="Nhập lại mật khẩu mới">
						</div>
					</div>
				</form>
				<div>
					<div class="row">
						<div class="col-md-offset-4 col-xs-offset-1">
							<a href=""><button class="btn btn-primary ">Xác nhận</button></a>
							<button class="btn btn-warning " data-dismiss="#">Hủy bỏ</button>
						</div>
					</div>
				</div>				
			</div><!-- /Form  -->
		</div><!-- /row -->
	</div><!-- /Phần Đổi MK -->
	<br><br><br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>