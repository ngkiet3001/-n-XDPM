use master
go
create database QLCD
go
use QLCD
go
create table KhachHang
(
	Id int identity primary key,
	Ten nvarchar(40) null,
	DiaChi nvarchar(40) null,
	Sdt nvarchar(40) null,
)
go
create table NhanVien
(
	Id int identity primary key,
	Password nvarchar(40) null,
	Ten nvarchar(40) null,
	DiaChi nvarchar(40) null,
	Sdt nvarchar(40) null,
)
go
create table Title
(
	Id int identity primary key,
	Ten nvarchar(40) null,
	TheLoai bit null, /*0-Game, 1-Phim*/
	Gia int null,
	PhiTre int null,
	ThoiGianThue int null
)
go
create table DVD
(
	Id int identity primary key,
	IdTitle int not null,
	TinhTrang nvarchar(40) not null check(TinhTrang in ('TrenKe', 'Thue', 'DatTruoc' )),
)
go
create table ChiTietPhieuMuon
(
	IdPhieuMuon int not null,
	IdDVD int not null,
	NgayThue datetime null,
	NgayTra datetime null,
	PhiTre int null,
	primary key (IdPhieuMuon, IdDVD)
)
go
create table PhieuMuon
(
	Id int identity primary key,
	IdKhachHang int not null,
	NgayTao datetime
)
go
create table TienPhat
(
	Id int identity primary key,
	IdKhachHang int not null,
	IdDVD int not null,
	NgayMuon datetime null,
	NgayTra datetime null,
	PhiPhat int null
)
go
create table ChiTietPhieuDatTruoc
(
	IdPhieuDatTruoc int not null,
	IdDVD int not null,
	primary key (IdPhieuDatTruoc, IdDVD)
)
go
create table PhieuDatTruoc
(
	Id int identity primary key,
	IdKhachHang int not null,
	NgayTao datetime
)



insert into KhachHang values ('Maria', 'Berlin', '030-0074321')
insert into KhachHang values ('Ana', 'México', '(5) 555-4729')
insert into KhachHang values ('Antonio', 'London', '(171) 555-7788')
insert into KhachHang values ('Thomas', 'Luleå', '0921-12 34 65')

insert into NhanVien values ('11111', 'Frédérique', 'Strasbourg', '88.60.15.31')
insert into NhanVien values ('11111', 'Martín', 'Madrid', '(91) 555 22 82')
insert into NhanVien values ('11111', 'Laurence', 'Marseille', '91.24.45.40')

insert into Title values ('Cuoc chien giua cac vi sao', 1, 20000, 10000, 5)
insert into Title values ('Khung long khung khing', 1, 50000, 15000, 5)
insert into Title values ('GTA V', 0, 500000, 100000, 30)
insert into Title values ('Minecraft', 0, 200000, 30000, 50)

insert into DVD values (1, 'TrenKe')
insert into DVD values (1, 'TrenKe')
insert into DVD values (1, 'TrenKe')
insert into DVD values (2, 'TrenKe')
insert into DVD values (2, 'TrenKe')
insert into DVD values (3, 'TrenKe')
insert into DVD values (3, 'TrenKe')
insert into DVD values (4, 'TrenKe')
insert into DVD values (4, 'TrenKe')