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
                    <h1>Thông tin cơ bản</h1>
                    <form class="form-horizontal">
                    	<div class="form-group">
                    		<label class="col-md-3 control-label"><strong>Họ tên</strong></label>
                            <div class="col-md-9">
                            	<span > 
                            	<input class="form-control" type="text" value="Nguyễn Bá Đạt" id = "u_fullname">
                            	</span>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label"><strong>Ngày sinh</strong></label>
                            <div class="col-md-9">
                            	<div class="row">
                            		<div class="col-md-4">
                            			<select class="form-control" id="st_dob">
                                        	<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option selected="selected" value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
                                    	</select>
                            		</div>                         		
                                    
                                    <div class="col-md-4">
                                    	<select class="form-control" id="st_mob">
                                        	<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option selected="selected" value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
                                    	</select>
                                    </div>
                                    <div class="col-md-4">
                                    	<select class="form-control" id="st_yob">
                                       	 	<option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option selected="selected" value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option>
                                   		</select>
                                    </div>
                                </div>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label "><strong>Chỗ ở hiện nay</strong></label>
                            <div class="col-md-9">
                            	<span > 
                            	<input class="form-control" type="text" value="Thủ Đức - TPHCM" id = "u_DiaChi">
                            	</span>
                            </div>                           
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label "><strong>Quê Quán</strong></label>
                            <div class="col-md-9">
                            	<span > 
                            	<input class="form-control" type="text" value=" Tuy An - Phú Yên " id = "u_QueQuan">
                            	</span>
                            </div>        
                    	</div>
                    	<div class="form-group">
                    		<label class="col-md-3 control-label "><strong>Email</strong></label>
                            <div class="col-md-9">
                            	<span > 
                            	<input class="form-control" type="email" value=" dwdevil7796@gmail.com" id = "u_Email">
                            	</span>
                            </div>                           
                    	</div>
                    </form>
                    <button class = "btn btn-primary">Lưu lại</button>
                </div>				
			</div>
		</div><!-- /row -->
	</div><!-- /Phần thông tin nhé -->
	<br><br><br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>