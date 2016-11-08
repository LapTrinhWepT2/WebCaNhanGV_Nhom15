<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/webcanhangv"
	user="root"
	password="9542"/>
	<sql:query var="items" sql="SELECT * FROM KhoaHoc"/>   
  
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

</head>

<body>
   <jsp:include page="header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="col-md-7" style="padding: 0px 35px">
                <div class="logoLogin"></div>
                <h1><strong>Bạn chưa đăng kí khóa học nào cho mình?</strong></h1>
                <p style="text-align: justify;">Hãy đăng kí ngay cho mình một khóa học để tham gia vào khóa học này!</p>
                <img src="image/1.jpg" width="100%" height="auto">
            </div>
            <div class="col-md-5">
                <h2>ĐĂNG KÝ KHÓA HỌC</h2>
                <form>
                    <div class="form-group">
                        <label class="control-label" >Danh sách các khóa học hiện có</label>
                        <select class="form-control" tabindex="-1">                        	
                            <option>
                            		                            	
                            </option>                         
                        </select>
                    </div>
                    <div class="form-group">
                            <label class="control-label" for="name">Mô tả khóa học</label>
                            <textarea rows="20" cols="50" class= "form-control" disabled>Mô tả khóa học</textarea>
                            
                        </div>
                    </div>
                </form>
                <button class="btn btn-primary pull-right">Đăng Ký</button>
            </div>           
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>	
</body>

</html>