<%@page import="model.DeThi_CauHoi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.CauHoi" %>
<%@ page import="dao.CauHoiDAO" %>
<%@ page import="dao.UsersDao" %>
<%@ page import="model.Users" %>
<%@ page import="dao.DeThiDAO" %>
<%@page import="model.DeThi"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Danh sách các đề thi</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="javascript/jquery-3.1.1.min.js"></script>
	<script src = "bootstrap/js/bootstrap.min.js"></script>

	 <script language="javascript">

            var h =0; // Giờ
            var m = 0; // Phút
            var s = 3; // Giây
            var windowChild = null;
            var timeout = null; // Timeout
            
            function start()
            {
                /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
                if (h === null)
                {
                    h = parseInt(document.getElementById('h_val').value);
                    m = parseInt(document.getElementById('m_val').value);
                    s = parseInt(document.getElementById('s_val').value);
                }

                /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
                // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
                //  - giảm số phút xuống 1 đơn vị
                //  - thiết lập số giây lại 59
                if (s === -1){
                    m -= 1;
                    s = 59;
                }

                // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
                //  - giảm số giờ xuống 1 đơn vị
                //  - thiết lập số phút lại 59
                if (m === -1){
                    h -= 1;
                    m = 59;
                }

                // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
                //  - Dừng chương trình
                if (h == -1){
                    clearTimeout(timeout);
                     window.location="KetQuaThi.jsp";
                    //alert("http://kenhlaptrinh.net/bat-su-kien-trong-javascript/").;
                    //windowChild = window.open('http://freetuts.net');
                  
            	return false;
                }

                /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
                document.getElementById('h').innerText = h.toString();
                document.getElementById('m').innerText = m.toString();
                document.getElementById('s').innerText = s.toString();

                /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
                timeout = setTimeout(function(){
                    s--;
                    start();
                }, 1000);
            }
            
            function stop(){
                clearTimeout(timeout);
            }
        </script>

        <script>
$(document).ready(function(){
    $("button").click(function(){
        $("#box").fadeIn();
    });
});
</script>

        <style>
form {
    counter-reset: section;
    list-style-type: none;
}

label::before {
    counter-increment: section;
    content: counters(section,".") " ";
}
</style>

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

	<%
		 CauHoiDAO cauhoiDAO=new CauHoiDAO();      	
		 String madethi="";
		if(request.getParameter("dethi")!=null){
			madethi=request.getParameter("dethi");
		}
		
		String tendethi="";
		if(request.getParameter("tendethi")!=null){
			tendethi=request.getParameter("tendethi");
		}
		
		String timedethi="";
		if(request.getParameter("timedethi")!=null){
			timedethi=request.getParameter("timedethi");
		}
		
		DeThiDAO dethiDAO=new DeThiDAO();
	%>		
	
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2">
				<h2><b>LẬP TRÌNH WEB</b></h2>			

				<div class="row">
					<div class="col-md-6">
					<%-- <%for(DeThi dt: dethiDAO.getListDeThi()){ %> --%>
						<table class="table">
							<tbody>
							
								<tr>
									<td><h4>Đề bài:</h4></td>
									<td><%=tendethi%></td>
								</tr>
								<tr>
									<td><h4>Thời gian làm bài:</h4></td>
									<td><%=timedethi %></td>
								</tr>
								
							</tbody>
						</table>
						<%-- <%} %> --%>
						<button type="button" class="btn btn-primary" value="Start" onclick="start()">Bắt đầu làm</button>
					</div>		            
		        </div><!-- row -->
		        
		        <form id="box" style="display:none;margin-top: 50px;">		        	
					<div class="panel panel-primary">
						<div class="panel-heading">
					    	<h3 class="panel-title">
					    		Thời gian còn lại:
					    		<span id="h">Giờ</span> :
					            <span id="m">Phút</span> :
					            <span id="s">Giây</span>

					            <span class="col-md-offset-6"><a style="color: #fff;" href="KetQuaThi.jsp">Nộp bài</a></span>
					    	</h3>
					  	</div>
					  	
						<div class="panel-body">
							<%-- <%
		        				for(CauHoi ch:cauhoiDAO.getListCauHoitheomacauhoi()){
		        			%> --%>
		        			<% for(DeThi_CauHoi dtch: cauhoiDAO.getListCauHoiWithDeThi(madethi)){ %>
						   <div class="form-group" id="boxques">
								<strong>Câu</strong><label>:<%=dtch.getNoidungcauhoi() %></label><br>
								<input type="radio" class="" value="da1" name="optradio"> 	<%=dtch.getLuachon1() %><br>
								<input type="radio" class="" value="da2" name="optradio"> 	<%=dtch.getLuachon2() %><br>
								<input type="radio" class="" value="da3" name="optradio"> 	<%=dtch.getLuachon3() %><br>
								<input type="radio" class="" value="da4" name="optradio"> 	<%=dtch.getLuachon4() %>
							</div>
							<%} %>
						</div><!-- panel-body -->
					  <div class="panel-footer">Hết</div>
					</div>				

				</form>        
			</div><!-- col -->
		</div><!-- row -->
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>