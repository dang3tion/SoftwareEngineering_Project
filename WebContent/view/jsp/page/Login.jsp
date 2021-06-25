<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
<jsp:include page="../component/menu.jsp"></jsp:include>


<body>

	<div class="site-blocks-cover2 overlay "
		style="background-image: url('${url}/images/hero_2.jpg')"
		data-aos="fade" data-stellar-background-ratio="1"></div>

	<div class="site-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">

					<h2 class="mb-5 text-black">Đăng nhập</h2>

					<form action="${pageContext.request.contextPath}/login"
						method="POST" class="p-5 bg-white">

						<div class="row form-group">

							<div class="col-md-12">
								<label class="text-black" for="email">Tên tài khoản</label> <input
									style="width: 80%" name="email" type="text" id="email"
									class="form-control">
							</div>
						</div>

						<div class="row form-group">

							<div class="col-md-12">
								<label class="text-black" for="subject">Mật khẩu</label> <input
									style="width: 80%" name="password" type="password" id="subject"
									class="form-control">
							</div>
						</div>



						<div class="row form-group">

							<div class="col-md-12">

								<c:if test="${ not empty msg}">
									<p style="color: #ff2323;">Sai tên tài khoản hoặc mật khẩu</p>
								</c:if>
								<input type="submit" name="login" value="Đăng nhập"
									class="btn btn-primary py-2 px-4 text-white">
							</div>
						</div>


					</form>
				</div>

			</div>
		</div>
	</div>


	<jsp:include page="../component/footer.jsp"></jsp:include>
	<script type="text/javascript">
		function switchPage(page) {
			var searchForm = document.getElementById("search-form");
			var inputPage = document.getElementById("input-page");
			inputPage.value = page;
			searchForm.submit();
		}
	</script>
</body>
</html>