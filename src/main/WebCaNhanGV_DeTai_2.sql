create database WebCaNhanGV
use WebCaNhanGV

create table User
(
	UserName nvarchar(20),
    Password nvarchar(20),
    HoVaTen text,
    NgaySinh date,
    GioiTinh nvarchar(20),
    DiaChi text,
    QueQuan text,
    SoDT nvarchar(20),
    Email text,
    TrangThai nvarchar(20),
    primary key(UserName)
)

create table KhoaHoc
(
	MaKhoaHoc nvarchar(20),
    TenKhoaHoc text,
    MoTaKhoaHoc text,
    NgayBatDau Date,
    NgayKetThuc date,
    primary key(MaKhoaHoc)
)

create table DangKyKhoaHoc
(
	MaKhoaHoc nvarchar(20),
    UserName nvarchar(20),
    NgDangKy Datetime,
    HocPhi numeric,
    TrangThai nvarchar(20),
    primary key(MaKhoaHoc, UserName),
    foreign key(MaKhoaHoc) references KhoaHoc(MaKhoaHoc),
    foreign key(UserName) references User(UserName)
)

create table BaiTap
(
	MaBaiTap nvarchar(20),
    TenBaiTap text,
    NoiDungBaiTap text,
    LinkBaiTap text,
    HanChot DateTime,
    primary key(MaBaiTap)
)

create table BaiTapKhoaHoc
(
	MaKhoaHoc nvarchar(20),
    MaBaiTap nvarchar(20),
    UserName nvarchar(20),
    ThoiGianNop DateTime,
    LinkNopBai text,
    TrangThai nvarchar(20),
    NhanXet text,
    Diem float,
    primary key(MaKhoaHoc, MaBaiTap, UserName),
    foreign key(MaKhoaHoc) references KhoaHoc(MaKhoaHoc),
    foreign key (MaBaiTap) references BaiTap(MaBaiTap),
    foreign key(UserName) references User(UserName)
)

create table DeThi
(	
	MaDeThi nvarchar(20),
    MaKhoaHoc nvarchar(20),
    TenDeThi text,
    ThoiGian Time,
    primary key(MaDeThi)
)

create table CauHoi
(
	MaCauHoi nvarchar(20),
    NoiDungCauHoi text,
    LuaChon1 text,
    LuaChon2 text,
    LuaChon3 text,
    LuaChon4 text,
    DapAn text,
    primary key(MaCauHoi)
)

create table LamBaiThi
(
	MaDeThi nvarchar(20),
    UserName nvarchar(20),
    MaCauHoi nvarchar(20),
    TraLoi nvarchar (20),
    Diem float,
    primary key(MaDeThi, UserName, MaCauHoi),
    foreign key(MaDeThi) references DeThi(MaDeThi),
    foreign key(UserName) references User(UserName),
    foreign key(MaCauHoi) references CauHoi(MaCauHoi)
)

create table TaiLieu
(
	MaTaiLieu nvarchar(20),
    TieuDe text,
    NoiDung text,
    NgayUp dateTime,
    LinkTaiLieu text,
    primary key(MaTaiLieu)
)

create table TaiLieuKhoaHoc
(
	MaTaiLieu nvarchar(20), 
    MaKhoaHoc nvarchar(20),
    primary key(MaTaiLieu, MaKhoaHoc),
    foreign key (MaTaiLieu) references TaiLieu(MaTaiLieu),
    foreign key (MaKhoaHoc) references KhoaHoc(MaKhoaHoc)
)

create table ThongBao
(
	MaThongBao nvarchar(20),
    NoiDungThongBao text,
    ThoiGianThongBao dateTime,
    primary key(MaThongBao)
)

create table TinNhan
(
	MaTinNhan nvarchar(20),
    TieuDe text,
    NoiDung text,
    ThoiGian dateTime,
    UserGui nvarchar(20),
    EmailNguoiNhan text,
    primary key(MaTinNhan),
    foreign key(UserGui) references User(UserName)
)
create table BinhLuan
(
	MaBinhLuan nvarchar(20),
    TieuDe text,
    NoiDung text,
    ThoiGianBinhLuan DateTime,
    Link text,
    UserID nvarchar(20),
    MaKhoaHoc nvarchar(20),
    primary key(MaBinhLuan),
    foreign key(MaKhoaHoc) references KhoaHoc(MaKhoaHoc),
    foreign key(UserID) references User(UserName)
)
insert into User values ('nguyenvana','123456789','Nguyen Van A','1996/01/01','Nam','Long An','TP.HCM','0986767676','nguyenvana@gmail.com','Còn hoạt động');
insert into User values ('nguyenvanb','123456789','Nguyen Van B','1996/01/01','Nam','Long An','TP.HCM','0986767676','nguyenvana@gmail.com','Còn hoạt động');
insert into User values ('nguyenvanc','123456789','Nguyen Van C','1996/01/01','Nam','Long An','TP.HCM','0986767676','nguyenvana@gmail.com','Còn hoạt động');

insert into dangkykhoahoc values ('KH01','nguyenvana','2016-10-29','100000','Đã đóng');
insert into dangkykhoahoc values ('KH02','nguyenvana','2016-10-29','100000','Đã đóng');
insert into dangkykhoahoc values ('KH01','nguyenvanb','2016-10-29','100000','Đã đóng');
insert into dangkykhoahoc values ('KH01','nguyenvanc','2016-10-29','100000','Đã đóng');

insert into KhoaHoc values ('KH02','Web','Khóa học dành cho những lập trình viên','2016/01/16','2016/06/01');
insert into KhoaHoc values ('KH01','Công nghệ phần mềm','Khóa học dành cho những lập trình viên','2016/01/16','2016/06/01');

insert into ThongBao values ('TB01','Thông báo nghỉ học: lớp chiều thứ 2 nghỉ học','2016/10/16 10:35:0');






