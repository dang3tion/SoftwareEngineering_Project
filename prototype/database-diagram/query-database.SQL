﻿CREATE DATABASE TT_TUYENSINH_2

DROP DATABASE TT_TUYENSINH_2
USE  TT_TUYENSINH_2
 
	-- TAO BANG

		CREATE TABLE TRUONGHOC(
	ID_TRUONG INT NOT NULL IDENTITY(1,1), /**/
	MATRUONG CHAR(10) NOT NULL,
	TRANGTHAI NVARCHAR(50) NOT NULL,
	TENTRUONG NVARCHAR(100) NOT NULL,
	LOAITRUONG NVARCHAR(100) NOT NULL,
	WEBSITE NVARCHAR(100) NOT NULL,
	GIOITHIEU NVARCHAR(MAX) NOT NULL,
	TT_TUYENSINH NVARCHAR(MAX) NOT NULL,
	NGUOICAPNHAT INT NOT NULL,  /*F*/
	) 
	ALTER TABLE TRUONGHOC ADD CONSTRAINT P_TRUONG PRIMARY KEY (ID_TRUONG)


	

		CREATE TABLE DIACHI(
	ID_DIACHI INT NOT NULL IDENTITY(1,1),
	TIEUDE NVARCHAR(max) NOT NULL,
	DIACHI NVARCHAR(MAX) NOT NULL,
	KHUVUC NVARCHAR(max) NOT NULL,
	TINH NVARCHAR(100) NOT NULL,
	QUAN_HUYEN NVARCHAR(100) NOT NULL,
	TRANGTHAI NVARCHAR(100) NOT NULL,
	ID_TRUONG INT NOT NULL,
	NGUOICAPNHAT INT NOT NULL,

	)
	
	ALTER TABLE DIACHI ADD CONSTRAINT P_DIACHI_CHITIET PRIMARY KEY (ID_DIACHI)

		CREATE TABLE SDT(
	ID_SDT INT NOT NULL IDENTITY(1,1), /**/
	TIEUDE NVARCHAR(100) NOT NULL,
	SDT NVARCHAR(100) NOT NULL,
	TRANGTHAI NVARCHAR(50) NOT NULL, 
	ID_TRUONG INT NOT NULL, /*F*/
	NGUOICAPNHAT INT NOT NULL,
	)

	
	ALTER TABLE SDT ADD CONSTRAINT P_SDT PRIMARY KEY (ID_SDT)

	CREATE TABLE HINHANH(
	ID_HA INT NOT NULL IDENTITY(1,1),
	TIEUDE NVARCHAR(100) NOT NULL,
	URL_ANH NVARCHAR(500) NOT NULL,
	TRANGTHAI NVARCHAR(50) NOT NULL,
	ID_TRUONG INT NOT NULL)

	ALTER TABLE HINHANH ADD CONSTRAINT P_HINHANH PRIMARY KEY(ID_HA)

		CREATE TABLE KHUNG_DT(
	ID_KHUNG INT NOT NULL IDENTITY(1,1),
	LOAIKHUNG NVARCHAR(100) NOT NULL,
	MOTA NVARCHAR(MAX) NOT NULL,

	)

	ALTER TABLE KHUNG_DT ADD CONSTRAINT P_KHUNG_DT PRIMARY KEY (ID_KHUNG)

	CREATE TABLE KHUNGDT_TRUONG(
	ID_KDT INT NOT NULL IDENTITY(1,1),
	ID_KHUNG INT NOT NULL,
	NGAYCAPNHAT DATETIME NOT NULL,
	MOTA NVARCHAR(MAX) NOT NULL,
	TRANGTHAI NVARCHAR(50) NOT NULL,
	ID_TRUONG INT NOT NULL,
	NGUOICAPNHAT INT NOT NULL,
	)
		ALTER TABLE KHUNGDT_TRUONG ADD CONSTRAINT P_KHUNGDT_TRUONG PRIMARY KEY (ID_KDT)
	CREATE TABLE HOCPHI(
	ID_HP INT NOT NULL IDENTITY(1,1) /**/,
	MUCHOCPHI NVARCHAR(100) NOT NULL,
	MOTA NVARCHAR(1000) NULL,
	GIATRI MONEY NOT NULL,
	ID_KDT INT NOT NULL,
	NGUOICAPNHAT INT NOT NULL,
	)
	ALTER TABLE HOCPHI ADD CONSTRAINT P_HOCPHI PRIMARY KEY (ID_HP)
	
	CREATE TABLE NGANH(
	ID_NGANH INT NOT NULL IDENTITY(1,1) ,
	TEN_NGANH NVARCHAR(200) NOT NULL,
	MA_NGANH NVARCHAR(50) NOT NULL,
	)
	ALTER TABLE NGANH ADD CONSTRAINT P_NGANH PRIMARY KEY (ID_NGANH)

		CREATE TABLE NGANH_KHUNGDT(
	ID_KDT INT NOT NULL,/**/
	ID_NGANH INT NOT NULL,/**/
	DIEMDAUVAO FLOAT NOT NULL,
	SL_CHITIEU INT NOT NULL,
	MOTA NVARCHAR(100) NOT NULL,
	NGUOICAPNHAT INT NOT NULL,
	)
	ALTER TABLE NGANH_KHUNGDT ADD CONSTRAINT P_CHITIET_NGANH PRIMARY KEY (ID_KDT,ID_NGANH)

	CREATE TABLE NGANH_TOHOP(
	ID_KDT INT NOT NULL,/**/
	ID_NGANH INT NOT NULL,/**/
	ID_TH INT NOT NULL,/**/
	)

	ALTER TABLE NGANH_TOHOP ADD CONSTRAINT P_CNGANH_TOHOP PRIMARY KEY (ID_KDT,ID_NGANH,ID_TH)

	CREATE TABLE TOHOP(
	ID_TH INT NOT NULL IDENTITY(1,1),
	TOHOP NVARCHAR(20) NOT NULL,
	TEN_TOHOP NVARCHAR(100) NOT NULL,
	)
		ALTER TABLE TOHOP ADD CONSTRAINT P_TOHOP PRIMARY KEY (ID_TH)

	CREATE TABLE TAIKHOAN(
	ID_ND INT NOT NULL IDENTITY(1,1),
	HOTEN NVARCHAR(100) NOT NULL,
	EMAIL NVARCHAR(100) NOT NULL,
	MATKHAU NVARCHAR(100) NOT NULL,
	QUYENHAN NVARCHAR(20) NOT NULL,
	SDT NVARCHAR(20) NOT NULL,
	DIACHI NVARCHAR(MAX) NOT NULL,
	TRANGTHAI NVARCHAR(20) NOT NULL,
	ID_CAPNHAT INT NULL,
	)
		ALTER TABLE TAIKHOAN ADD CONSTRAINT P_TAIKHOAN PRIMARY KEY (ID_ND)

	CREATE TABLE BINHLUAN(
	ID_BL INT NOT NULL IDENTITY(1,1),
	TENNGUOI_BL NVARCHAR(100) NOT NULL ,
	EMAIL_BL NVARCHAR(100) NOT NULL ,
	NOIDUNG NVARCHAR(1000) NOT NULL,
	NGAYCAPNHAT DATETIME NOT NULL,
	TRANGTHAI NVARCHAR(20) NOT NULL,
	ID_ND INT NULL,
	)

	ALTER TABLE BINHLUAN ADD CONSTRAINT P_BINHLUAN PRIMARY KEY (ID_BL)

	CREATE TABLE PHANHOI(
	ID_PH INT NOT NULL IDENTITY(1,1),
	ID_BL INT NOT NULL,
	TENNGUOI_BL NVARCHAR(100) NOT  NULL ,
	EMAIL_BL NVARCHAR(100) NOT  NULL ,
	NOIDUNG NVARCHAR(1000) NOT NULL,
	NGAYCAPNHAT DATETIME NOT NULL,
	TRANGTHAI NVARCHAR(20) NOT NULL,
	ID_ND INT NULL,

	)
	ALTER TABLE PHANHOI ADD CONSTRAINT P_PHANHOI PRIMARY KEY (ID_PH)


	-- ADD FOREIGN KEY FOR TABLE


	ALTER TABLE TRUONGHOC ADD CONSTRAINT PK_NGCN FOREIGN KEY (NGUOICAPNHAT) REFERENCES TAIKHOAN(ID_ND)
	--

	ALTER TABLE DIACHI ADD CONSTRAINT PK_DC FOREIGN KEY (ID_TRUONG) REFERENCES TRUONGHOC(ID_TRUONG)

	--

	ALTER TABLE SDT ADD CONSTRAINT PK_SDT FOREIGN KEY (ID_TRUONG) REFERENCES TRUONGHOC(ID_TRUONG)

	--
	ALTER TABLE HINHANH ADD CONSTRAINT PK_HA FOREIGN KEY (ID_TRUONG) REFERENCES TRUONGHOC(ID_TRUONG)
	--

	ALTER TABLE KHUNGDT_TRUONG ADD CONSTRAINT PK_DT_CHITIET FOREIGN KEY (ID_TRUONG) REFERENCES TRUONGHOC(ID_TRUONG)

	ALTER TABLE KHUNGDT_TRUONG ADD CONSTRAINT PK_KDT_CHITIET FOREIGN KEY (ID_KHUNG) REFERENCES KHUNG_DT(ID_KHUNG)

	ALTER TABLE KHUNGDT_TRUONG ADD CONSTRAINT PK_KDT_NGUOICAPNHAT FOREIGN KEY (NGUOICAPNHAT) REFERENCES TAIKHOAN(ID_ND)
	--


	ALTER TABLE HOCPHI ADD CONSTRAINT PK_KDT_HOCPHI FOREIGN KEY (ID_KDT) REFERENCES KHUNGDT_TRUONG(ID_KDT)


	--


	ALTER TABLE NGANH_KHUNGDT ADD CONSTRAINT PK_CHITIET_NGANH_ID_KHUNG FOREIGN KEY (ID_KDT) REFERENCES KHUNGDT_TRUONG(ID_KDT)

	ALTER TABLE NGANH_KHUNGDT ADD CONSTRAINT PK_CHITIET_NGANH_ FOREIGN KEY (ID_NGANH) REFERENCES NGANH(ID_NGANH)

	--

	ALTER TABLE NGANH_TOHOP ADD CONSTRAINT PK_KHUNG_TOHOP FOREIGN KEY (ID_KDT) REFERENCES KHUNGDT_TRUONG(ID_KDT)

	ALTER TABLE NGANH_TOHOP ADD CONSTRAINT PK_CTNGANH_TOHOP FOREIGN KEY (ID_NGANH) REFERENCES NGANH(ID_NGANH)

	ALTER TABLE NGANH_TOHOP ADD CONSTRAINT PK_NGANH_TOHOP FOREIGN KEY (ID_TH) REFERENCES TOHOP(ID_TH)
	--
	ALTER TABLE TAIKHOAN ADD CONSTRAINT PK_TAIKHOAN FOREIGN KEY (ID_CAPNHAT) REFERENCES TAIKHOAN(ID_ND)

	--

	ALTER TABLE PHANHOI ADD CONSTRAINT PK_PHANHOI FOREIGN KEY (ID_BL) REFERENCES BINHLUAN(ID_BL)

	ALTER TABLE PHANHOI ADD CONSTRAINT PK_PHANHOI_ND FOREIGN KEY (ID_ND) REFERENCES TAIKHOAN(ID_ND)

	--
	ALTER TABLE BINHLUAN ADD CONSTRAINT PK_BINHLUAN_ND FOREIGN KEY (ID_ND) REFERENCES TAIKHOAN(ID_ND)
	--
	INSERT INTO KHUNG_DT VALUES(N'Cao đẳng','')
	INSERT INTO KHUNG_DT VALUES(N'Đại học chính quy','')
	INSERT INTO KHUNG_DT VALUES(N'Chất lượng tiên tiến','')
	INSERT INTO KHUNG_DT VALUES(N'Liên kết quốc tế','')
	-- Insert nganh
	INSERT INTO NGANH VALUES(N'Khoa học Máy tính','7480101')
	INSERT INTO NGANH VALUES(N'Kỹ thuật Máy tính','7480106')
	INSERT INTO NGANH VALUES(N'Sư phạm Kỹ thuật nông nghiệp','7140215')
	INSERT INTO NGANH VALUES(N'Ngôn ngữ Anh','7220201')
	INSERT INTO NGANH VALUES(N'Quản trị kinh doanh','7340101')
	INSERT INTO NGANH VALUES(N'Công nghệ thông tin','7480201')
	INSERT INTO NGANH VALUES(N'Công nghệ kỹ thuật nhiệt','7510206')
	INSERT INTO NGANH VALUES(N'Kỹ thuật môi trường','7520320')
	INSERT INTO NGANH VALUES(N'Kỹ thuật điều khiển và tự động hóa','7520216')


	INSERT INTO TAIKHOAN VALUES('DANG','A','A','A','A','A','A',NULL)
	DELETE NGANH WHERE ID_NGANH IN(5,6,7,8,9,10)
		SELECT * FROM NGANH
	SELECT * FROM TRUONGHOC


		select * from KHUNGDT_TRUONG where ID_TRUONG='2' AND ID_KHUNG='1' AND NGAYCAPNHAT='2021/11/2'
		
		INSERT INTO KHUNGDT_TRUONG VALUES('1','2021/11/2','A','A',2,1)
		SELECT ID_TRUONG FROM TRUONGHOC WHERE MATRUONG='nls'

