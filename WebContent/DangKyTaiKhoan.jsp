<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Đăng ký</title>
    <link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="javascript/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="javascript/myjs.js"></script>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	      $(document).ready(function () {
	           var x_timer;
	           $("#dk_username").keyup(function (e) {
	                clearTimeout(x_timer);
	                var user_name = $(this).val();
	                x_timer = setTimeout(function () {
	                    check_username_ajax(user_name);
	                }, 1000);
	                });
	 
	           function check_username_ajax(username) {
	                $("#user-result").html('<img src="image/ajax-loader.gif" />');
	                $.post('CheckUserServlet', {'dk_username': username}, function (data) {
	                    $("#user-result").html(data);
	                 });
	           }
	       });
	</script>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>	

    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-7 col-sm-10 col-xs-12" style="padding: 0px 35px">
                <h1><strong>Bạn chỉ cần có một tài khoản</strong></h1>
                <p style="text-align: justify;">Một tài khoản sẽ giúp bạn truy cập vào khóa học của mình!</p>
                <img src="image/1.jpg" alt="" width="100%" height="auto">
            </div>

            <div class="col-lg-5 col-md-5 col-sm-10 col-xs-12">
                <h2>ĐĂNG KÝ TÀI KHOẢN</h2>
                <form action = "UsersServlet" method="post">
                    <div class="form-group">
                        <label for="dk_username">Tên Đăng Nhập</label>
                        <input name="dk_username" id="dk_username" type="text" class="form-control" placeholder="Tên đăng nhập">
                        <span id="user-result"></span>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="dk_pass">Nhập Mật khẩu</label>
                        <input name="dk_pass" id="dk_pass" type="pass" class="form-control" placeholder="Password"> <span id="user-result"></span>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="name">Họ Tên Đầy Đủ</label>
                        <input name="FullName" type="text" class="form-control" placeholder="Họ tên đầy đủ">
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <label class="control-label" for="name">Ngày</label>
                                <input name="NgaySinh" type="text" class="form-control" placeholder="Ngày">
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <label class="control-label" for="name">Tháng</label><span class="select2-chosen"></span>
                                <abbr class="select2-search-choice-close"></abbr>
                                <span class="select2-arrow"><b></b></span>
                                <select name="Thang" id="searchvol" class="newselect-sm elect2-offscreen form-control" tabindex="-1">
                                    <option>Tháng 1</option>
                                    <option>Tháng 2</option>
                                    <option>Tháng 3</option>
                                    <option>Tháng 4</option>
                                    <option>Tháng 5</option>
                                    <option>Tháng 6</option>
                                    <option>Tháng 7</option>
                                    <option>Tháng 8</option>
                                    <option>Tháng 9</option>
                                    <option>Tháng 10</option>
                                    <option>Tháng 11</option>
                                    <option>Tháng 12</option>
                                </select>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <label class="control-label" for="name">Năm</label>
                                <input name="Nam" type="text" class="form-control" placeholder="Năm">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="DiaChi">Chỗ nay</label>
                        <input name="DiaChi" type="text" class="form-control" placeholder="Chỗ ở hiện nay">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="name">Quê Quán</label>
                        <input name="QueQuan" type="text" class="form-control" placeholder="Quê quán">
                    </div>
                    <div class="form-group has-feedback">
                        <label class="control-label" for="name">Số điện thoại</label>
                        <input name="SoDT" type="text" class="form-control" placeholder="Số điện thoại">
                    </div>
                    <div class="form-group has-feedback">
                        <label class="control-label" for="name">Email liên hệ</label>
                        <input name="Email" type="text" class="form-control" placeholder="Email">
                    </div>
                     <input type ="hidden" value = "insert" name = "command">
               		 <input type ="submit" value = "Đăng ký" class="btn btn-primary pull-right">
                </form>              
            </div>
        </div>
    </div> <!-- Noi dung -->
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>