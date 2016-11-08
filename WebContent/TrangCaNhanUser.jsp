<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Trang cá nhân</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="logoChangPassword"></div>
				<h2 ><strong>Chào mừng bạn đến trang Cá nhân</strong></h2>
				<h4><i>Đây là các thông tin của bạn</i></h4>
				<h4><i>Bạn có thể xem thông tin của chính mình và chỉnh sửa nếu chưa đúng</i></h4>
				<h3><i><strong>Let's Go</strong></i></h3>
			</div>
			<div class="col-md-6">
				<div class="infbox">                    
                    <a class="editInfo" href="SuaThongTinUser.jsp"><span class="glyphicon glyphicon-edit"></span>Chỉnh sửa</a>                    
                    <h1>Thông tin cơ bản</h1>
                    <form class="form-horizontal">
                    	<div class="form-group">
                    		<label class="col-md-3 control-label"><strong>Họ tên</strong></label>
                            <div class="col-md-9 ">
                            	<span class="form-control"> Nguyễn Bá Đạt </span>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label"><strong>Ngày sinh</strong></label>
                            <div class="col-md-9">
                            	<span class="form-control"> 07/07/1996  </span>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label "><strong>Chỗ ở hiện nay</strong></label>
                            <div class="col-md-9">
                            	<span class="form-control"> Thủ Đức - TPHCM  </span>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label "><strong>Quê Quán</strong></label>
                            <div class="col-md-9">
                            	<span class="form-control">  Tuy An - Phú Yên </span>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label "><strong>Email</strong></label>
                            <div class="col-md-9">
                            	<span class="form-control"> dwdevil7796@gmail.com</span>
                            </div>                           
                    	</div>
                    </form>
                </div>				
			</div>
		</div><!-- /row -->
	</div><!-- /Phần thông tin nhé -->
	<br><br><br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>