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
create table KhoaHoc_DeThi
(
	MaKhoaHoc nvarchar(20),
    MaDeThi nvarchar(20),
    primary key(MaKhoaHoc,MaDeThi),
    foreign key (MaDeThi) references DeThi(MaDeThi),
    foreign key(MaKhoaHoc) references KhoaHoc(MaKhoaHoc)
)

create table ChiTietDeThi
(
	MaDeThi nvarchar(20),
    MaCauHoi nvarchar(20),
    primary key(MaDeThi, MaCauHoi),
    foreign key (MaDeThi) references DeThi(MaDeThi),
    foreign key( MaCauHoi) references CauHoi( MaCauHoi)
)

insert into User values ('nguyenvana','123456789',N'Nguyễn Văn A','1996/01/01','Nam','Long An','TP.HCM','0986767676','nguyenvana@gmail.com',N'CÃ²n hoáº¡t Ä‘á»™ng');
insert into User values ('nguyenvanb','123456789',N'Nguyễn Văn B','1996/01/01','Nam','Long An','TP.HCM','0986767676','nguyenvana@gmail.com',N'CÃ²n hoáº¡t Ä‘á»™ng');
insert into User values ('nguyenvanc','123456789',N'Nguyễn Văn C','1996/01/01','Nam','Long An','TP.HCM','0986767676','nguyenvana@gmail.com',N'CÃ²n hoáº¡t Ä‘á»™ng');

insert into dangkykhoahoc values ('KH01','nguyenvana','2016-10-29','100000','Ä�Ã£ Ä‘Ã³ng');
insert into dangkykhoahoc values ('KH02','nguyenvana','2016-10-29','100000','Ä�Ã£ Ä‘Ã³ng');
insert into dangkykhoahoc values ('KH01','nguyenvanb','2016-10-29','100000','Ä�Ã£ Ä‘Ã³ng');
insert into dangkykhoahoc values ('KH01','nguyenvanc','2016-10-29','100000','Ä�Ã£ Ä‘Ã³ng');

insert into KhoaHoc values ('KH02',N'Web',N'Khóa học dành cho lập trình viên','2016/01/16','2016/06/01');
insert into KhoaHoc values ('KH01',N'Công nghệ phần mềm','Khóa học dành cho lập trình viên','2016/01/16','2016/06/01');

insert into ThongBao values ('TB01','ThÃ´ng bÃ¡o nghá»‰ há»�c: lá»›p chiá»�u thá»© 2 nghá»‰ há»�c','2016/10/16 10:35:0');

insert into dethi values('DT01',N'Kiểm tra 15 phút hoc kỳ 1','0:15:0');
insert into dethi values('DT02',N'Kiểm tra 10 phút hoc kỳ 1','0:10:0');

insert into cauhoi values('CH01',N'JavaScript là ngôn ngữ xử lý ở:',N'Client',N'Server',N'Server/client',N'Không có dạng nào',N'Không có dạng nào');
insert into cauhoi values('CH02',N'Javascript là ngôn ngữ thông dịch hay biên dịch:',N'Thông dịch',N'Diễn dịch','Server/client',N'Không có dạng nào ở trên',N'Không có dạng nào ở trên');
insert into cauhoi values('CH03',N'Phương thức viết chương trình của Javascript như thế nào?',N'Viết riêng một trang',N'Viết chung với HTML',N'Cả hai dạng',N'Không có dạng nào',N'Không có dạng nào');
insert into cauhoi values('CH04',N'Phương thức viết chương trình của Javascript như thế nào?',N'Viết riêng một trang',N'Viết chung với HTML',N'Cả hai dạng',N'Không có dạng nào',N'Không có dạng nào');

insert into chitietdethi values('DT01','CH01');
insert into chitietdethi values('DT01','CH02');
insert into chitietdethi values('DT01','CH03');
insert into chitietdethi values('DT02','CH04');

insert into khoahoc_dethi values('KH01','DT01');
insert into khoahoc_dethi values('KH01','DT02');
insert into khoahoc_dethi values('KH02','DT02');

select * from cauhoi,dethi, chitietdethi where cauhoi.MaCauHoi=chitietdethi.MaCauHoi  and chitietdethi.MaDeThi=dethi.MaDeThi and dethi.MaDeThi="DT01";
select * from khoahoc,dethi,khoahoc_dethi where khoahoc.MaKhoaHoc=khoahoc_dethi.MaKhoaHoc and khoahoc_dethi.MaDeThi=dethi.MaDeThi and khoahoc.MaKhoaHoc="KH01";
