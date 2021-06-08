<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
<jsp:include page="../component/menu.jsp"></jsp:include>
<link rel="stylesheet" href="${url}css/add.css">

<body>


	<%
		response.setHeader("Access-Control-Allow-Origin", "*");
	%>
	<div class="site-blocks-cover2 overlay "
		style="background-image: url('${url}/images/hero_2.jpg')"
		data-aos="fade" data-stellar-background-ratio="1"></div>


	<div class="site-section bg-light">
		<div class="container mt-5" style="margin-bottom: 100px;">
			<input type="file" id="uploadImage" accept="image/*"
				onchange="angular.element(this).scope().upload()" hidden>

			<div class="container-fluid">
				<div class="frame-cog">
					<h3>Thêm thông tin trường mới</h3>

					<div class="save">
						<a
							href="${pageContext.request.contextPath}/admin/warehouse/manager-product"><button
								type="button" style="float: left">
								<i class="far fa-arrow-alt-circle-left"></i> Quay lại
							</button></a>
						<button type="button" data-toggle="modal"
							data-target="#add-product">Lưu lại toàn bộ</button>

					</div>

					<div class="frame-cog-content" id="frame-content">
						<div class="frame" style="box-shadow: 1px 1px 3px -1px #5f5f5f;">


							<div>
								<p style="font-style: italic; color: #2196f3;">
									<i class="fas fa-check-circle"></i> Thêm thông tin thành công
								</p>

								<p style="font-style: italic; color: #ff5722;">
									<i class="fas fa-exclamation-circle"></i> Thêm thông tin không
									thành công
								</p>



							</div>
							<h5>Thông tin chung</h5>
							<ul class="information">
								<li class="content-input">
									<div class="title">
										<p>Tên trường</p>
									</div>

									<div class="input">
										<input name="name" placeHolder="Nhập tên trường" type="text"
											value="">



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p>Mã trường</p>
									</div>

									<div class="input">
										<input name="name" placeHolder="Nhập mã trường" type="text"
											value="">



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p>Chọn Logo</p>
									</div>

									<div class="input">
										<input type="text" placeHolder="Nhập URL ảnh"
											style="min-width: 310px;" name="color-imgmain"
											id="color-imgmain-1" value="">

									</div>

									<div class="input">
										<label class="choose-file"
											style="margin: 0; margin-left: 15px; border-radius: 3px; color: white; padding: 6px; background: #f89d13; cursor: pointer;"
											onclick="clickFileUpload('color-imgmain-1')">Chọn ảnh</label>
									</div> <img
									style="width: 40; height: 60px; object-fit: contain; margin-left: 10px; display: none"
									id="color-imgmain-1-img" src="">


								</li>

								<li class="content-input">
									<div class="title">
										<p>Website chính</p>
									</div>

									<div class="input">
										<input name="name" placeHolder="Nhập URL website" type="text"
											value="">



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p>Giới thiệu</p>
									</div>

									<div class="input">
										<textarea name="name" placeHolder="Giới thiệu về trường"
											type="text" value=""></textarea>



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p>Thông tin tuyển sinh</p>
									</div>

									<div class="input">
										<textarea name="name" placeHolder="Mô tả" type="text" value=""></textarea>



									</div>

								</li>

								<li class="content-input">
									<div class="title">
										<p>Loại trường</p>
									</div>
									<div class="input">
										<select name="type-colleges">
											<option value="conglap">Công lập</option>
											<option value="tuthuc">Tư thục</option>
											<option value="${b.id}"></option>
											<option value="${b.id}"></option>
											<option value="${b.id}"></option>
											<option value="danlap">Dân lập</option>
										</select>
									</div>


								</li>

								<li class="content-input">
									<div class="title">
										<p>Trạng thái</p>
									</div>
									<div class="input">
										<select class="" name="type">
											<option value="hoatdong">Hoạt động</option>
											<option value="ngunghoatdong">Ngưng hoạt động</option>
										</select>
									</div>
								</li>

							</ul>
						</div>
					</div>


				</div>

				<div class="frame-number" id="color-1"
					style="width: 95%; box-shadow: 1px 1px 3px -1px #5f5f5f;">
					<h5>Địa chỉ</h5>
					<div class="frame-cog-content">
						<div class="frame">
							<table class="table">
								<thead class="thead-light">
									<tr>
										<th scope="col" title="Số thứ tự">STT</th>
										<th scope="col">Tiêu đề</th>
										<th scope="col">Địa chỉ</th>
										<th scope="col">Tỉnh/Thành</th>
										<th scope="col">Quận/Huyện</th>

										<th scope="col">Trạng thái</th>
									</tr>
								</thead>
								<tbody id="address-table">
									<tr>
										<th scope="row">1</th>
										<td>
											<div class="input">
												<input name="name"
													placeHolder="Nhập tiêu đề VD: cơ sở 1,..." type="text"
													value="">



											</div>
										</td>
										<td>
											<div class="input">
												<input name="name" placeHolder="Nhập địa chỉ" type="text"
													value="">



											</div>
										</td>

										<td>
											<div class="input">
												<select id="province1" style="width: 150px"
													name="type-colleges">
													<option disabled selected>Chọn tỉnh thành</option>

												</select>
											</div>
										</td>
										<td>
											<div class="input">
												<select id="district1" style="width: 150px">
													<option disabled selected value="chuachon">Chưa
														chọn</option>

												</select>
											</div>
										</td>

										<td>
											<div class="input">
												<select name="type-colleges">
													<option value="conglap">Hoạt động</option>
													<option value="tuthuc">Ngưng hoạt động</option>
												</select>
											</div>
										</td>
									</tr>

								</tbody>

							</table>

							<div class="w-100" style="overflow: auto;">
								<button type="button" class="btn-warning float-right"
									onclick="addAddress()"
									style="color: white; box-shadow: 1px 1px 2px 0px #a5a5a5; padding: 5px; border-radius: 3px; outline: 0; border: 0">Thêm
									địa chỉ</button>
							</div>
						</div>
					</div>

				</div>
				<div class="frame-number" id="color-1"
					style="width: 95%; box-shadow: 1px 1px 3px -1px #5f5f5f;">
					<h5>Số điện thoại</h5>
					<div class="frame-cog-content">
						<div class="frame">
							<table class="table">
								<thead class="thead-light">
									<tr>
										<th scope="col" title="Số thứ tự">STT</th>
										<th scope="col">Tiêu đề</th>
										<th scope="col">Số điện thoại</th>
										<th scope="col">Trạng thái</th>
									</tr>
								</thead>
								<tbody id="phoneNo">
									<tr>
										<th scope="row">1</th>
										<td>
											<div class="input">
												<input name="name" placeHolder="Nhập tiêu đề" type="text"
													value="">



											</div>
										</td>
										<td>
											<div class="input">
												<input name="name" placeHolder="Nhập số điện thoại"
													type="text" value="">



											</div>
										</td>

										<td>
											<div class="input">
												<select name="type-colleges">
													<option value="conglap">Hoạt động</option>
													<option value="tuthuc">Ngưng hoạt động</option>
												</select>
											</div>
										</td>
									</tr>

								</tbody>

							</table>

							<div class="w-100" style="overflow: auto;">
								<button type="button" class="btn-warning float-right"
									style="color: white; box-shadow: 1px 1px 2px 0px #a5a5a5; padding: 5px; border-radius: 3px; outline: 0; border: 0"
									onclick="addPhoneNo()">Thêm địa chỉ</button>
							</div>
						</div>
					</div>

				</div>
				<div class="frame-number" id="color-1"
					style="width: 95%; box-shadow: 1px 1px 3px -1px #5f5f5f;">

					<h5>Hình ảnh</h5>



					<div class="frame-cog-content">
						<div class="frame">
							<ul class="information">


								<li class="content-input">
									<div class="title">
										<p>Chọn ảnh nền</p>
									</div>

									<div class="input">
										<input type="text" style="min-width: 310px;"
											placeholder="Nhập URL ảnh nền" name="color-imgmain"
											id="color-imgmain-1" value="">

									</div>

									<div class="input">
										<label class="choose-file"
											style="margin: 0; margin-left: 15px; border-radius: 3px; color: white; padding: 6px; background: #f89d13; cursor: pointer;"
											onclick="clickFileUpload('color-imgmain-1')"
											onclick="clickFileUpload('color-imgmain-1')">Chọn ảnh</label>
									</div> <img
									style="width: 40; height: 60px; object-fit: contain; margin-left: 10px; display: none"
									id="color-imgmain-1-img" src="">


								</li>
								<div id="color-sub1">
									<input type="number" id="number-color-sub1" value="2"
										name="number-color-sub1" hidden>
									<li class="content-input">
										<div class="title">
											<p>Chọn ảnh mô tả</p>
										</div>

										<div class="input">
											<input type="text" style="min-width: 310px;"
												placeholder="Nhập URL ảnh nền" name="color1"
												id="color1-sub1" />
											<!-- <label class="choose-file" style="margin: 0;"
																for="color1-sub1">Chọn ảnh</label> -->
										</div>



										<div class="input">
											<label class="choose-file"
												style="margin: 0; margin-left: 15px; border-radius: 3px; color: white; padding: 6px; background: #f89d13; cursor: pointer;">Chọn
												ảnh</label>
										</div> <img
										style="width: 40; height: 60px; object-fit: contain; margin-left: 10px; display: none"
										id="color1-sub1-img" src="">
									</li>
									<li class="content-input">
										<div class="title">
											<p>Chọn ảnh mô tả</p>
										</div>

										<div class="input">
											<input type="text" name="color1" id="color1-sub2"
												placeholder="Nhập URL ảnh nền" style="min-width: 310px;" />
											<!-- <label class="choose-file" style="margin: 0;"
																for="color1-sub2">Chọn ảnh</label> -->
										</div>

										<div class="input">
											<label class="choose-file"
												style="margin: 0; margin-left: 15px; border-radius: 3px; color: white; padding: 6px; background: #f89d13; cursor: pointer;">Chọn
												ảnh</label>
										</div> <img
										style="width: 40; height: 60px; object-fit: contain; margin-left: 10px; display: none"
										id="color1-sub2-img" src="">

									</li>

								</div>
								<li class="content-input">
									<div class="title">
										<button type="button" class="btn-primary"
											style="box-shadow: 1px 1px 2px 0px #a5a5a5; padding: 5px; border-radius: 3px; outline: 0; border: 0"
											onclick="addImgSub()">Thêm ảnh mô tả</button>
									</div>
								</li>
							</ul>
						</div>
					</div>

				</div>
				<div class=" frame-number " id="color-1"
					style="width: 95%; box-shadow: 1px 1px 3px -1px #5f5f5f; margin-bottom: 30px;">
					<h5>Khung đào tạo</h5>
					<div class="frame-cog-content">
						<div class="frame">
							<ul class="information">
								<li class="content-input">
									<div class="title">
										<p>Chọn năm</p>
									</div>
									<div class="input">
										<select name="type-colleges">
											<option value="conglap">2021</option>

										</select>
									</div>


								</li>
								<li class="content-input">
									<div class="title">
										<p>Loại khung</p>
									</div>
									<div class="input">
										<select name="type-colleges">
											<option value="conglap">Đại học chính quy</option>
											<option value="tuthuc">Cao đẳng</option>
											<option value="danlap">Chất lượng tiên tiến</option>
											<option value="danlap">Chất lượng cao</option>
											<option value="danlap">Liên kết quốc tế</option>
										</select>
									</div>


								</li>
								<li class="content-input">
									<div class="title">
										<p>Mô tả</p>
									</div>

									<div class="input">
										<textarea name="name" placeHolder="Nhập mã trường" type="text"
											value=""></textarea>



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p>Trạng thái</p>
									</div>
									<div class="input">
										<select name="type-colleges">
											<option value="danlap">Có hiệu lực</option>
											<option value="danlap">Vô hiệu lực</option>
										</select>
									</div>


								</li>
								<li class="content-input">
									<div class="title">
										<p>Mức học phí</p>
									</div>

									<div class="input">
										<input name="name" placeHolder="Nhập mức học phí" type="text"
											value="">



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p></p>
									</div>

									<div class="input">
										<input name="name" placeHolder="Nhập giá trị tương đương"
											type="text" value="">



									</div>

								</li>
								<li class="content-input">
									<div class="title">
										<p>Mô tả (học phí)</p>
									</div>

									<div class="input">
										<textarea name="name" placeHolder="Nhập mô tả học phi"
											type="text" style="height: 100px;" value=""></textarea>



									</div>

								</li>




							</ul>
							<table class="table">
								<thead class="thead-light">
									<tr>
										<th scope="col">Ngành</th>
										<th scope="col">Điểm đầu vào</th>
										<th scope="col">Chỉ tiêu</th>

										<th scope="col">Tổ hợp môn</th>
										<th scope="col" style="width: 350px;">Mô tả</th>
									</tr>
								</thead>
								<tbody id="frame1">
									<tr>
										<td>
											<div class="input">
												<select name="type-colleges">
													<option value="conglap">Hoạt động</option>
													<option value="tuthuc">Ngưng hoạt động</option>
												</select>
											</div>
										<td>
											<div class="input">
												<input name="name" placeHolder="Nhập mã trường" type="text"
													value="">
											</div>
										</td>

										<td>
											<div class="input">
												<input name="name" placeHolder="Nhập mã trường" type="text"
													value="">
											</div>
										</td>
										<td>
											<div class="input">
												<input name="name" placeHolder="VD: A01,A02" type="text"
													value="">
											</div>
										</td>

										<td>
											<div class="input">
												<textarea name="name" placeHolder="Nhập mô tả học phi"
													type="text"
													style="height: 100px; padding: 5px; outline: 0; width: 300px;"
													value=""></textarea>
											</div>
										</td>


									</tr>


								</tbody>

							</table>
							<div class="w-100" style="overflow: auto;">
								<button type="button" class="btn-warning float-right"
									style="color: white; box-shadow: 1px 1px 2px 0px #a5a5a5; padding: 5px; border-radius: 3px; outline: 0; border: 0"
									onclick="addCourse(1)">Thêm ngành</button>
							</div>
						</div>
					</div>


				</div>
<div id="frame-add">

</div>
				<div>
					<input type="number" value="1" id="number-color"
						name="number-color" disabled="disabled" hidden>
					<button type="button" class="btn-primary" data-toggle="modal"
						data-target="#add-color-btn"
						style="background: #FFC107; margin-right: 30px; float: right; box-shadow: 1px 1px 2px 0px #a5a5a5; padding: 10px; border-radius: 3px; outline: 0; border: 0;">Thêm
						khung đào tạo</button>
				</div>

			</div>


			<!-- color -->



			<!-- thong so ki thuat -->



			<div class="modal fade" id="add-product" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Xác nhận thêm
								thông tin</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>Thông tin trường mới bạn thêm vào không thể xóa bỏ, bạn có chắc
							chắn	muốn thêm thông tin trường này không?</p>

						</div>
						<div class="modal-footer">
							<input type="submit" class="btn btn-primary"
								name="confirm-add-product" value="Đồng ý">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Hủy</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="add-color-btn" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Xác nhận
								thêm thông tin</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">Bạn có muốn thêm khung đào tạo mới ko.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Không</button>
							<button type="button"  onclick="addFrame()" id="btnAddColor"
								data-dismiss="modal" class="btn btn-primary">Đồng ý</button>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>




	<jsp:include page="../component/footer.jsp"></jsp:include>
	<script>
		function onclickProvince(id, l) {
			$.getJSON("https://thongtindoanhnghiep.co/api/city/" + id
					+ "/district", function(data) {
				console.log(data);
				var se = document.getElementById('district' + l);
				se.innerHTML = "";
				var arr = data;
				for (let a = 0; a < arr.length - 1; a++) {
					let option = document.createElement('option');
					option.setAttribute('value', arr[a]['ID']);
					option.innerHTML = arr[a]['Title'];
					se.appendChild(option);
				}

			});
			;
		}
		$.getJSON("https://thongtindoanhnghiep.co/api/city/", function(data) {
			var se = document.getElementById('province1');
			var arr = data['LtsItem'];
			se.setAttribute('onchange', 'onclickProvince(this.value,1)');
			for (let a = 0; a < arr.length - 1; a++) {
				let option = document.createElement('option');
				option.setAttribute('value', arr[a]['ID']);
				option.innerHTML = arr[a]['Title'];
				se.appendChild(option);
			}

		});
		;
	</script>
	<script src="${url}/js/additional.js"></script>
</body>
</html>