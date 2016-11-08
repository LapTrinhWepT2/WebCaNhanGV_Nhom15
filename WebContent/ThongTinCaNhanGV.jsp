<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Thông tin cá nhân</title>
	<link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src = "javascript/jquery-3.1.1.min.js"></script>
	<script src ="bootstrap/js/bootstrap.min.js"></script>
	<script src = "javascript/myjs.js"></script>

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
	<div class= "container">
		<ol class="breadcrumb">
			<li><a href="#">Trang chủ</a></li>
			<li class="active">Thông Tin Cá Nhân
			</li>
			<li><a href="#">Khóa học</a>
			</li>
			<li><a href="#">Tìm Kiếm</a></li>
		</ol>
	</div>
	<div class="container">
	    <div class="row">
	        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 bhoechie-tab-container">
	            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
	              <div class="list-group">
	                <a href="#" class="list-group-item active text-center">
	                  <h4 class="glyphicon glyphicon-user"></h4><br/>Hồ sơ
	                <a href="#" class="list-group-item text-center">
	                  <h4 class="glyphicon glyphicon-briefcase"></h4><br/>Chức vụ
	                </a>
	                <a href="#" class="list-group-item text-center">
	                  <h4 class="glyphicon glyphicon-book"></h4><br/>Ấn Phẩm
	                </a>
	                <a href="#" class="list-group-item text-center">
	                  <h4 class="glyphicon glyphicon-folder-open"></h4><br/>Các nghiên cứu
	                </a>
	                <a href="#" class="list-group-item text-center">
	                  <h4 class="glyphicon glyphicon-ice-lolly-tasted"></h4><br/>Sở thích
	                </a>
	              </div>
	            </div>
	            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
	                <!-- flight section -->
	                <div class="bhoechie-tab-content active">
	                	<div class="row">
	                		<div class="col-md-7 col-lg-7 col-sm-11 col-xs-11">
	                			<ul>
				        			<li><p>Họ tên: Nguyễn Văn ABC</p></li>
				        			<li><p>Ngày sinh: 18/8/1988</p></li>
				        			<li><p>Địa Chỉ: Thủ Đức, TPHCM</p></li>
				        			<li><p>Quê quán: Vũng Tàu, Việt Nam</p></li>
				        			<li><p>Điện Thoại: 01652729999</p></li>
				        			<li><p>Email:<span style="color:blue">nguyenvanabc@gmail.com</span></p></li>
				        		</ul>
	                		</div>
	                		<div class="col-sm-offset-1 col-md-4 col-lg-4 col-sm-11 col-xs-11">
                      		<img src="image/emptyImg.gif" alt="" width="150px" height="150px">
                      	</div>
	                	</div>
                      	

	                </div>
	                <!-- train section -->
	                <div class="bhoechie-tab-content">
	                   <ul>
		        			<li><p>Năm 2016: Phó Trưởng Khoa - Giảng Viên Bộ môn công nghệ phần mềm - ĐH SPKT</p></li>
		        			<li><p>Năm 2015: Giảng Viên Bộ môn Công nghệ phần mềm - ĐH SPKT</p></li>
		        			<li><p>Năm 2015: Giảng Viên Bộ môn Công nghệ phần mềm - ĐH SPKT</p></li>
		        		</ul> 
	                </div>
	    
	                <!-- hotel search -->
	                <div class="bhoechie-tab-content">
	                    <ul>
					    	<li>Vu Duc Lung, Vu N. Truong, Vietnamese Speech Recognition Using Dynamic Time Warping and Coefficient of Correlation, International Conference on Control, Automation and Information Sciences (ICCAIS 2013), 25-28 Nov. 2013, Nha Trang city, Vietnam, ISBN: 978-1-4799-0569-0
							Huy Phan, Quan Do, The-Luan Do, and Lung Vu, Metric Learning for Automatic Sleep Stage Classification, 35th Annual International Conference of the IEEE Engineering in Medicine and Biology Society (EMBC’13), Osaka, Japan, 4-7 July 2013, pp. 5025-5028</li>
					    	<li>Phan Dinh Duy, Vu Duc Lung, Nguyen Quang Duy Trang, Nguyen Cong Toan. Speech Recognition on Robot Controller Implemented on FPGA. Journal of Automation and Control Engineering, Vol. 1, No. 3, 2013.</li>
					    	<li>Vu Duc Lung, Phan Dinh Duy, Nguyen Vo an Phu, Nguyen Hoang Long, Truong Nguyen Vu. Speech recognition in Human-Computer interactive control. Journal of Automation and Control Engineering, Vol. 1, No. 3, 2013</li>
					    </ul>
	                </div>
	                <div class="bhoechie-tab-content">
	                    <ul><h3>Research Interest</h3>
					    	<li>Human-Computer Interaction</li>
					    	<li>Speech Recognition</li>
					    	<li>Machine Learning</li>
					    	<li>Digital Hardware Design on FPGA</li>
					    </ul>
					    <ul><h3>Projects</h3>
					    	<li>Auto Tracking Robot using Control System on FPGA, VNU HCM</li>
					    	<li>Automatic Musical Fountain, VNU HCM</li>
					    	<li>Adult Web filtering using text classification, VNU HCM</li>
					    	<li>Vietnamese speech recognition research and its application to robot (Lego Mindstorm NTX) control, VNU HCM</li>
					    </ul>
	                </div>
	                <div class="bhoechie-tab-content">
	                    <ul>
		        			<li><p>Du lịch- Khám phá đất nước</p></li>
		        			<li><p>Xem phim, nghe nhạc</p></li>
		        			<li><p>Đọc tiểu thuyết tình yêu lãng mạn</p></li>
		        		</ul>
	                </div>
	            </div>
	        </div>
	  	</div>
	</div><!-- content -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>