<%@page import="model.KhoaHoc_DeThi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.DeThiDAO" %>
<%@page import="model.DeThi"%>
<%@ page import="dao.KhoaHocDAO" %>
<%@page import="model.KhoaHoc"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Khóa học</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src ="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<%
		 KhoaHocDAO khoahocDAO=new KhoaHocDAO();      	
		 String makhoahoc="";
		if(request.getParameter("makhoahoc")!=null){
			makhoahoc=request.getParameter("makhoahoc");
		}
		
		String tenkhoahoc="";
		if(request.getParameter("tenkhoahoc")!=null){
			tenkhoahoc=request.getParameter("tenkhoahoc");
		}
		
		
		DeThiDAO dethiDAO=new DeThiDAO();
	%>
	<jsp:include page="header.jsp"></jsp:include>	
	
	<div class="container">
	    <div class="row">
	    	<h2><b><%=tenkhoahoc %></b></h2>
	        <div class="col-md-8 col-sm-12">
	            <div class="panel-group">
	                <div class="panel panel-primary">
	                    <div class="panel-heading">Mô tả Khóa học</div>
	                    <div class="panel-body">
	                        <p>Chiều Thứ 2-Tiết 1-5</p>
	                        <p>Phòng: A4-301</p>
	                        <p>Ngày bắt đầu: 01/09/2016 -Ngày kết thúc: 30/12/2016</p>
	                        <p>Học phí: 3500000/17 buổi</p>
	                        <p>Mô tả: Cung cấp kiến thức và phương pháp lập trình trên môi trường web. Cung cấp kiến thức nền tảng công nghệ ADO.NET để làm việc với các loại cơ sở dữ liệu. Cung cấp các kiến thức cơ bản để có thể tự nghiên cứu và phát triển các loại ứng dụng khác sử dụng công nghệ .NET. Cung cấp cho sinh viên khả năng tự xây dựng một ứng dụng Winform hoàn chỉnh ở mức độ vừa phải sử dụng công nghệ .NET</p>
	                    </div>
	                </div>
	                <div class="panel panel-primary">
	                    <div class="panel-heading">Tài liệu học tập - Giáo trình</div>
	                    <div class="panel-body">
	                        <ul>
	                            <li><a href="">Giáo trình học lập trình WEB</a>
	                            </li>
	                            <li><a href="">Tài liệu HTML cơ bản</a>
	                            </li>
	                            <li><a href="">Tài liệu CSS cơ bản</a>
	                            </li>
	                            <li><a href="">Tài liệu JSP cơ bản</a>
	                            </li>
	                            <li><a href="">Tài liệu PHP cơ bản</a>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="panel panel-primary">
	                    <div class="panel-heading">Danh sách lớp-Điểm</div>
	                    <div class="panel-body">
	                        <a href="">Danh sách</a>
	                    </div>
	                </div>
	                <div class="panel panel-primary">
	                    <div class="panel-heading">Bài Tập</div>
	                    <div class="panel-body">
	                        <li>
	                            <A HREF="">Bài tập 1</A>
	                        </li>
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
	        <div class="col-md-4 col-sm-12">
	        	<div class="panel-group">
	        		<div class="panel panel-warning">
	        			<div class="panel-heading">
	        			Thi trắc nghiệm
		        		</div>
		        		<div class="panel-body">
		        			<table class="table table-striped table-hover bangDeThi">
								<tbody>
									<%for(KhoaHoc_DeThi khdt: dethiDAO.getListDeThiWithKhoaHoc(makhoahoc)){ %>
									<tr>
										<td><a href="DeThiDemo.jsp?dethi=<%=khdt.getMadethi()%>&tendethi=<%=khdt.getTendethi()%>&timedethi=<%=khdt.getThoigian()%>"><span class="glyphicon glyphicon-pencil"></span><%=khdt.getTendethi() %></a></td>							
									</tr>
									<%}%>
									
								</tbody>	
							</table>
		        		</div>
	        		</div>
	        		<div class="panel panel-success">
	        			<div class="panel-heading">
	        				<div class="row">
	        					<div class="col-md-6">
	        						Thảo luận
	        					</div>
	        					<div class="col-md-6">
	        						<a class="editInfo" href="#" data-target = "#themchudeModal" data-toggle = "modal"><span class="glyphicon glyphicon-edit"></span>Thêm Thảo luận</a>
	      						</div>
	        				</div>		        			
		        		</div>
		        		<div class="panel-body">
		        			<ul>
		        				<li><a href="">Tình hình giảng dạy</a></li>
		        				<li><a href="">Bài tập 3 Khó</a></li>
		        			</ul>
		        		</div>
	        		</div><!-- /Phần panel bình luận -->
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
	        	</div><!-- /Phần panel-group -->
	        </div> <!-- /Phần col- -->
	    </div><!-- /Phần row -->
	</div><!-- /Phần container -->
	
	<jsp:include page="footer.jsp"></jsp:include>	

</html>