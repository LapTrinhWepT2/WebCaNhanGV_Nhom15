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
    <link rel="stylesheet" href="css/hopthuden.css">
    <script src="javascript/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="javascript/myjs.js"></script>
</head>

<body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Soạn Thư Mới</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2" for="inputTo">Người Nhận</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputTo" placeholder="Email người nhận">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2" for="inputSubject">Tiêu Đề</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputSubject" placeholder="Nhập Tiêu Đề">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-12" for="inputBody">Tin Nhắn</label>
                        <div class="col-sm-12">
                            <textarea class="form-control" id="inputBody" rows="18"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-primary ">Gửi<i></i>
                </button>
            </div>
        </div>
    </div>
</body>

</html>