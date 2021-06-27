<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
<jsp:include page="../component/menu.jsp"></jsp:include>
<body>
	     <div class="site-blocks-cover inner-page-cover overlay2" style="background-image: url('${url}/images/college/cb.jpg')" data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-10" data-aos="fade-up" data-aos-delay={400}>
                        <div class="row justify-content-center mt-5">
                            <div class="col-md-8 text-center">
                                <h1>${info.name}</h1>
                                <p class="mb-0">${info.type}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-section">
            <div class="container">
 				<h2 class="h-10 mb-4 text-black">Giới thiệu</h2>
                <div class="col-12 p-0">
                    <div class="col-12 p-0">
	                    <p><b>Tên Trường </b>: ${info.name}</p>
	                    <p><b>Mã trường </b>: ${info.idColleges}</p>
	                    <p><b>Loại trường </b>: ${info.type}</p>
	                    <p><b>Hệ đào tạo </b>: 
	                    	<ul>
	                    		<c:forEach items="${frames}" var="item">
	                    			<li>${item}</li>
	                    		</c:forEach>
	                    	</ul>
	                    </p>
	                    <p><b>Địa chỉ </b>: 
	                    	<ul>
	                    		<c:forEach items="${addresses}" var="item">
	                    			<li>${item}</li>
	                    		</c:forEach>
	                    	</ul>
	                    </p>
	                    <p><b>SĐT </b>: 
	                    	<ul>
	                    		<c:forEach items="${phones}" var="item">
	                    			<li>${item}</li>
	                    		</c:forEach>	                    	
	                    	</ul>
	                    </p>
	                    <p><b>Website </b>: <a href="${info.website}">${info.website}</a></p>
	                    <p><b>Giởi thiệu về trường: </b> ${info.introduce}</p>
                    </div>
                    <br />
                </div>
            </div>
            <div class="container">
 				<h2 class="h-10 mb-4 text-black">Thông tin tuyển sinh</h2>
 				<h4>1.Thông tinh chung</h3>
                <div class="col-12 p-0">
                    <div class="col-12 p-0">${info.admissionDetail}</div>
                    <br />
                </div>
                <h4>2.Học phí</h3>
                <table style="width:100%;">
				  <tr>
				    <th>Nhóm ngành</th>
				    <th>Năm học 2020 - 2021</th> 
				    <th>Năm học 2021 - 2022</th>
				  </tr>
				  <tr>
				    <td>Nhóm ngành 1</td>
					<td>9.800.000</td>
					<td>10.780.000</td>
				  </tr>
				  <tr>
				    <td>Nhóm ngành 2</td>
					<td>11.700.000</td>
					<td>12.870.000</td>
				  </tr>
				</table>
				<br/>
				<h4>3. Các ngành đào tạo</h3>
				<table style="border-collapse: collapse; width: 100%;" border="1">
					<tbody>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px; text-align: center;"><strong>Ngành đào tạo</strong></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p><strong>Mã ngành</strong></p>
					<p>&nbsp;</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: center;"><strong>Tổ hợp môn xét tuyển</strong></td>
					<td style="width: 17.7034%; height: 46px; text-align: center;"><strong>Chỉ tiêu (Dự kiến)</strong></td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-su-pham-ky-thuat-nong-nghiep-c16074.html" target="_blank" rel="dofollow">Sư phạm Kỹ thuật nông nghiệp</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7140215</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">45</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ngon-ngu-anh-c16592.html" target="_blank" rel="dofollow">Ngôn ngữ Anh</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7220201</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					<p>Văn, Sử, Anh</p>
					<p>Văn, Địa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">140</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Kinh tế</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7310101</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">150</td>
					</tr>
					<tr style="height: 18px;">
					<td style="width: 30.632%; height: 18px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-quan-tri-kinh-doanh-c16284.html" target="_blank" rel="dofollow">Quản trị kinh doanh</a></td>
					<td style="width: 13.4355%; height: 18px; text-align: center;">
					<p>7340101</p>
					</td>
					<td style="width: 21.2645%; height: 18px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 18px; text-align: center;">200</td>
					</tr>
					<tr style="height: 18px;">
					<td style="width: 30.632%; height: 18px;">Quản trị kinh doanh (Chất lượng cao)</td>
					<td style="width: 13.4355%; height: 18px; text-align: center;">
					<p>7340101C</p>
					</td>
					<td style="width: 21.2645%; height: 18px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					<p>&nbsp;</p>
					</td>
					<td style="width: 17.7034%; height: 18px; text-align: center;">50</td>
					</tr>
					<tr style="height: 18px;">
					<td style="width: 30.632%; height: 18px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-bat-dong-san-c16288.html" target="_blank" rel="dofollow">Bất động sản</a></td>
					<td style="width: 13.4355%; height: 18px; text-align: center;">
					<p>7340116</p>
					</td>
					<td style="width: 21.2645%; height: 18px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Lý, Địa</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 18px; text-align: center;">40</td>
					</tr>
					<tr style="height: 18px;">
					<td style="width: 30.632%; height: 18px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ke-toan-c16518.html" target="_blank" rel="dofollow">Kế toán</a></td>
					<td style="width: 13.4355%; height: 18px; text-align: center;">
					<p>7340301</p>
					</td>
					<td style="width: 21.2645%; height: 18px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 18px; text-align: center;">100</td>
					</tr>
					<tr style="height: 18px;">
					<td style="width: 30.632%; height: 18px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-sinh-hoc-c16332.html" target="_blank" rel="dofollow">Công nghệ sinh học</a></td>
					<td style="width: 13.4355%; height: 18px; text-align: center;">
					<p>7420201</p>
					</td>
					<td style="width: 21.2645%; height: 18px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Sinh</p>
					<p>Toán, Hóa, Sinh</p>
					</td>
					<td style="width: 17.7034%; height: 18px; text-align: center;">155</td>
					</tr>
					<tr style="height: 18px;">
					<td style="width: 30.632%; height: 18px;">Công nghệ sinh học (Chất lượng cao)</td>
					<td style="width: 13.4355%; height: 18px; text-align: center;">
					<p>7420201C</p>
					</td>
					<td style="width: 21.2645%; height: 18px; text-align: left;">
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 18px; text-align: center;">30</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-khoa-hoc-moi-truong-c16338.html" target="_blank" rel="dofollow">Khoa học môi trường</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7440301</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Tiếng Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">80</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-he-thong-thong-tin-c17032.html" target="_blank" rel="dofollow">Hệ thống thông tin</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7480104</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">40</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-thong-tin-c16368.html" target="_blank" rel="dofollow">Công nghệ thông tin</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7480201</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">210</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ky-thuat-co-khi-c16800.html" target="_blank" rel="dofollow">Công nghệ kỹ thuật cơ khí</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7510201</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">100</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Công nghệ kỹ thuật cơ khí (Chất lượng cao)</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7510201C</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">30</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ky-thuat-co-dien-tu-c16802.html" target="_blank" rel="dofollow">Công nghệ kỹ thuật cơ điện tử</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7510203</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-ky-thuat-o-to-c16808.html" target="_blank" rel="dofollow">Công nghệ kỹ thuật ô tô</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7510205</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">100</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ky-thuat-nhiet-c16804.html" target="_blank" rel="dofollow">Công nghệ kỹ thuật nhiệt</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7510206</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ky-thuat-hoa-hoc-c17046.html" target="_blank" rel="dofollow">Công nghệ kỹ thuật hóa học</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7510401</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">160</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Công nghệ kỹ thuật năng lượng tái tạo</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7519007</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">40</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ky-thuat-dieu-khien-va-tu-dong-hoa-c17044.html" target="_blank" rel="dofollow">Kỹ thuật điều khiển và tự động hóa</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7520216</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-ky-thuat-moi-truong-c17052.html" target="_blank" rel="dofollow">Kỹ thuật môi trường</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7520320</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">80</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Kỹ thuật môi trường (Chất lượng cao)</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7520320C</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					<p>&nbsp;</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">30</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-thuc-pham-c16938.html" target="_blank" rel="dofollow">Công nghệ thực phẩm</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7540101</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">240</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Công nghệ thực phẩm (Chất lượng cao)</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7540101C</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Công nghệ thực phẩm (Chương trình tiên tiến)</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7540101T</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-che-bien-thuy-san-c16948.html" target="_blank" rel="dofollow">Công nghệ chế biến thủy sản</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7540105</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">75</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-che-bien-lam-san-c16962.html" target="_blank" rel="dofollow">Công nghệ chế biến lâm sản</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7549001</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">155</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-chan-nuoi-c16398.html" target="_blank" rel="dofollow">Chăn nuôi</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620105</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">150</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-nong-hoc-c16412.html" target="_blank" rel="dofollow">Nông học</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620109</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">190</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-bao-ve-thuc-vat-c16418.html" target="_blank" rel="dofollow">Bảo vệ thực vật</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620112</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">85</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-cong-nghe-rau-hoa-qua-va-canh-quan-c16422.html" target="_blank" rel="dofollow">Công nghệ rau hoa quả và cảnh quan</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620113</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">&nbsp;</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">&nbsp;</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-kinh-doanh-nong-nghiep-c16426.html" target="_blank" rel="dofollow">Kinh doanh nông nghiệp</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620114</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">75</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-phat-trien-nong-thon-c16476.html" target="_blank" rel="dofollow">Phát triển nông thôn</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620116</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-lam-hoc-c16386.html" target="_blank" rel="dofollow">Lâm học</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620201</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Văn, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">80</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-lam-nghiep-do-thi-c16382.html" target="_blank" rel="dofollow">Lâm nghiệp đô thị</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620202</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Văn, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">40</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-quan-ly-tai-nguyen-rung-c16384.html" target="_blank" rel="dofollow">Quản lý tài nguyên rừng</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620211</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Văn, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">60</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-nuoi-trong-thuy-san-c16478.html" target="_blank" rel="dofollow">Nuôi trồng thủy sản</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7620301</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Văn, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">170</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-thu-y-c16486.html" target="_blank" rel="dofollow">Thú y</a></td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7640101</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Văn, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">160</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 30.632%; height: 46px;">Thú y (Chương trình tiên tiến)</td>
					<td style="width: 13.4355%; height: 46px; text-align: center;">
					<p>7640101T</p>
					</td>
					<td style="width: 21.2645%; height: 46px; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					<p>Toán, Sinh, Anh</p>
					</td>
					<td style="width: 17.7034%; height: 46px; text-align: center;">30</td>
					</tr>
					<tr>
					<td style="width: 30.632%;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-quan-ly-tai-nguyen-va-moi-truong-c16870.html" target="_blank" rel="dofollow">Quản lý tài nguyên và môi trường</a></td>
					<td style="width: 13.4355%; text-align: center;">
					<p>7850101</p>
					</td>
					<td style="width: 21.2645%; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; text-align: center;">110</td>
					</tr>
					<tr>
					<td style="width: 30.632%;"><a href="https://tuyensinhso.vn/nhom-nganh-dao-tao/nganh-quan-ly-dat-dai-c16878.html" target="_blank" rel="dofollow">Quản lý đất đai</a></td>
					<td style="width: 13.4355%; text-align: center;">
					<p>7850103</p>
					</td>
					<td style="width: 21.2645%; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Lý, Anh</p>
					<p>Toán, Lý, Địa</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; text-align: center;">240</td>
					</tr>
					<tr>
					<td style="width: 30.632%;">Tài nguyên và du lịch sinh thái</td>
					<td style="width: 13.4355%; text-align: center;">
					<p>7859002</p>
					</td>
					<td style="width: 21.2645%; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Sinh, Anh</p>
					<p>Toán, Văn, Anh</p>
					</td>
					<td style="width: 17.7034%; text-align: center;">40</td>
					</tr>
					<tr>
					<td style="width: 30.632%;">Cảnh quan và kỹ thuật hoa viên</td>
					<td style="width: 13.4355%; text-align: center;">
					<p>7859007</p>
					</td>
					<td style="width: 21.2645%; text-align: left;">
					<p>Toán, Lý, Hóa</p>
					<p>Toán, Sinh, Anh</p>
					<p>Toán, Hóa, Sinh</p>
					<p>Toán, Hóa, Anh</p>
					</td>
					<td style="width: 17.7034%; text-align: center;">120</td>
					</tr>
					</tbody>
				</table>
				<br/>
				<h2>Điểm trúng tuyển các năm</h2>
				<h4>1.Chương trình đại trà</h3>
				<table  style="border-collapse: collapse; width: 100%;" border="1">
					<tbody>
					<tr style="height: 46px;">
					<td style="text-align: center; width: 230px; height: 111px;" rowspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Ngành</strong></span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 111px;" rowspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Năm 2018</strong></span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 111px;" rowspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Năm 2019</strong></span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;" colspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Năm 2020</strong></span></p>
					</td>
					</tr>
					<tr style="height: 65px;">
					<td style="text-align: center; width: 125px; height: 65px;">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Xét theo KQ thi THPT</strong></span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 65px;">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Xét theo học bạ</strong></span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Sư phạm kỹ thuật nông nghiệp</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18,5</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Quản trị kinh doanh</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18.5</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20,50</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23,3</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">25,9</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Kế toán</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18.25</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23,3</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">25,7</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ sinh học</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19.15</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">26,6</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Bản đồ học</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Khoa học môi trường</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ thông tin</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18.15</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19,75</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22,75</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,9</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ kỹ thuật cơ khí</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17.5</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23,9</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ kỹ thuật cơ điện tử</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,5</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,2</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ kỹ thuật ô tô</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20,50</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22,75</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">25,3</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ kỹ thuật nhiệt</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17,75</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,9</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ kỹ thuật hóa học</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18.25</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20,5</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,9</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Kỹ thuật điều khiển và tự động hóa</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17.5</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,1</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Kỳ thuật môi trường</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22,6</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ thực phẩm</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18.75</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">26,2</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ chế biến thủy sản</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ chế biến lâm sản</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">15</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Chăn nuôi</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,4</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Nông học</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Bảo vệ thực vật</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19,5</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23,3</span></p>
					</td>
					</tr>
					<tr style="height: 65px;">
					<td style="width: 230px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ rau hoa quả và cảnh quan</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Kinh doanh nông nghiệp</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16.5</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16,75</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,1</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Phát triển nông thôn</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Lâm học</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">15</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Quản lý tài nguyên rừng</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">15</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Nuôi trồng thủy sản</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Thú y</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19.6</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,5</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">27</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Ngôn ngữ Anh&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">25,4</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Kinh tế</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17.5</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22,25</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,5</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Quản lý đất đai</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">22,1</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Quản lý tài nguyên và môi trường</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23,3</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Bất động sản</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20,8</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Hệ thống thông tin</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">17</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					</tr>
					<tr style="height: 65px;">
					<td style="width: 230px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ kỹ thuật năng lượng tái tạo</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 65px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Lâm nghiệp đô thị</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Tài nguyên và du lịch sinh thái</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">20</span></p>
					</td>
					</tr>
					<tr style="height: 46px;">
					<td style="width: 230px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Cảnh quan và kỹ thuật hoa viên</span></p>
					</td>
					<td style="text-align: center; width: 119px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 116px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">&nbsp;</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">16</span></p>
					</td>
					<td style="text-align: center; width: 125px; height: 46px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,3</span></p>
					</td>
					</tr>
					</tbody>
				</table>
				<br/>
				<h4>2.Chương trình tiên tiến</h3>
				<table  style="border-collapse: collapse; width: 100%;" border="1">
					<tbody>
					<tr>
					<td style="text-align: center; width: 230px;" rowspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Ngành</strong></span></p>
					</td>
					<td style="text-align: center; width: 123px;" rowspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Năm 2018</strong></span></p>
					</td>
					<td style="text-align: center; width: 110px;" rowspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Năm 2019</strong></span></p>
					</td>
					<td style="text-align: center; width: 212px;" colspan="2">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Năm 2020</strong></span></p>
					</td>
					</tr>
					<tr>
					<td style="text-align: center; width: 106px;">
					<p><span style="font-family: arial, helvetica, sans-serif;"><strong>Xét theo KQ thi THPT</strong></span></p>
					</td>
					<td style="text-align: center; width: 106px;"><span style="font-family: arial, helvetica, sans-serif;"><strong>Xét theo học bạ</strong></span></td>
					</tr>
					<tr>
					<td style="width: 230px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Công nghệ thực phẩm</span></p>
					</td>
					<td style="text-align: center; width: 123px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 110px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">18</span></p>
					</td>
					<td style="text-align: center; width: 106px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19</span></p>
					</td>
					<td style="text-align: center; width: 106px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">23,5</span></p>
					</td>
					</tr>
					<tr>
					<td style="width: 230px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">Thú y</span></p>
					</td>
					<td style="text-align: center; width: 123px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">19.6</span></p>
					</td>
					<td style="text-align: center; width: 110px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">21,25</span></p>
					</td>
					<td style="text-align: center; width: 106px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">24,5</span></p>
					</td>
					<td style="text-align: center; width: 106px;">
					<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif;">27</span></p>
					</td>
					</tr>
					</tbody>
				</table>
            </div>    
         </div>
	</div>
	<jsp:include page="../component/footer.jsp"></jsp:include>
</body>
</html>