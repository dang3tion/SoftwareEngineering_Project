<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
    <link rel="stylesheet" href="${url}/css/search.css">
	<jsp:include page="../component/menu.jsp"></jsp:include>


<body>

	<div class="site-blocks-cover overlay"
		style=" background-image:url('${url}/images/hero_2.jpg')"
		data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">
				<div class="col-md-12">
					<div class="row justify-content-center mb-4">
						<div class="col-md-8 text-center">
							<h1 class data-aos="fade-up">Chào mừng đến với IFLY College</h1>
							<p data-aos="fade-up" data-aos-delay={100}>Tìm kiếm ngôi
								trường thích hợp nhất</p>
						</div>
					</div>
					<c:if test="${not empty msg }">
						<script type="text/javascript">
							alert('Thêm thông tin trường mới thành công');
						</script>
					</c:if>
					<div class="form-search-wrap mb-3" data-aos="fade-up"
						data-aos-delay={200}>
                            <form id="search-form" method="get" action="college-list">
                                <div class="row align-items-center">
                                    <div class="col-lg-12 mb-4 mb-xl-0 col-xl-4 search-input">
                                    	<input type="hidden" name="search-method" value="normal"/>
                                        <input type="text" name="search" id="search" class="form-control rounded" placeholder="Nhập tên trường " autoFocus autocomplete="off" />
										<div class="autocom-box"></div>
								        <div class="icon"><i class="fas fa-search"></i>
        							</div>
										
                                    </div>
                                    <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                        <div class="wrap-icon">
                                            <span class="icon icon-room"></span>
                                            <select class="form-control rounded" name="province" id>
					                            <option value>Toàn tỉnh</option>												
					                        </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                        <div class="select-wrap">
                                            <span class="icon">
                          <span class="icon-keyboard_arrow_down"></span>
                                            </span>
                                            <select class="form-control rounded" name="course" id>                                       
					                          <option value>Tất cả các ngành</option>
											  <c:forEach items="${courses}" var="item">
											  	<option value="${item.name}">${item.name}</option>
											  </c:forEach>
					                        </select>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-xl-2 ml-auto text-right">
                                        <button type="submit" class="cta btn btn-primary btn-block rounded">
                                            <span class="bg-primary text-white rounded">
                          Tìm kiếm
                        </span>
                                        </NavLink>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="row text-left trending-search" data-aos="fade-up" data-aos-delay={300}>
                            <div class="col-12">
                                <h2 class="d-inline-block">Trending Search:</h2>
                                <a href="/searching/detail">University of Cambridge</a>
                                <a href="/searching/detail">Nong Lam University</a>
                                <a href="/searching/detail">Harvard University</a>
                                <a href="/searching/detail">University of Oxford</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

	<div class="site-section bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-7 text-left border-primary">
					<h2 class="font-weight-light text-primary">Các trường nổi bật</h2>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-lg-6">
					<div class="d-block d-md-flex listing hoverd">
						<a href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp" class="img d-block"
							style="background-image: url( '${url}/images/college/cb2.jpg')"></a>
						<div class="lh-content">
							<span class="category">Public University</span> <a href="#"
								class="bookmark"> <span class="icon-heart"></span>
							</a>
							<h3>
								<a class="hovera" href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp"> University of
									Cambridge </a>
							</h3>
							<address>Cambridge CB2 1TN, United Kingdom <br/>(Europe)</address>
							<p class="mb-0">
								<span class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star-half-full text-warning"></span> <span
									class="review">(1203 Reviews)</span>
							</p>
						</div>
					</div>
					<div class="d-block d-md-flex listing hoverd">
						<a href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp" class="img d-block"
							style="background-image: url(  '${url}/images/college/hv.jpg') "></a>
						<div class="lh-content">
							<span class="category">Public University</span> <a href="#"
								class="bookmark"> <span class="icon-heart"></span>
							</a>
							<h3>
								<a class="hovera" href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp"> Harvard
									University </a>
							</h3>
							<address>
								Cambridge, MA, United States <br/> (Americas)
							</address>
							<p class="mb-0">
								<span class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-secondary"></span> <span class="review">(1224
									Reviews)</span>
							</p>
						</div>
					</div>
					<div class="d-block d-md-flex listing hoverd">
						<a href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp" class="img d-block"
							style=" background-image:url('${url}/images/college/sf.jpg ')"></a>
						<div class="lh-content">
							<span class="category">Public University</span> <a href="#"
								class="bookmark"> <span class="icon-heart"></span>
							</a>
							<h3>
								<a class="hovera" href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp"> Stanford
									University </a>
							</h3>
							<address>

								Stanford, CA 94305, United States <br/>(Americas)
							</address>
							<p class="mb-0">
								<span class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-secondary" /> <span class="review">(1120
									Reviews)</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="d-block d-md-flex listing hoverd">
						<a href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp" class="img d-block"
							style="background-image: url('${url}/images/college/cb2.jpg')"></a>
						<div class="lh-content">
							<span class="category">Public University</span> <a href="#"
								class="bookmark"> <span class="icon-heart"></span>
							</a>
							<h3>
								<a class="hovera" href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp"> University of
									Cambridge </a>
							</h3>
							<address>Cambridge CB2 1TN, United Kingdom <br/>(Europe)</address>
							<p class="mb-0">
								<span class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star-half-full text-warning"></span> <span
									class="review">(1203 Reviews)</span>
							</p>
						</div>
					</div>
					<div class="d-block d-md-flex listing hoverd">
						<a href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp" class="img d-block"
							style="background-image: url(  '${url}/images/college/hv.jpg') "></a>
						<div class="lh-content">
							<span class="category">Public University</span> <a href="#"
								class="bookmark"> <span class="icon-heart"></span>
							</a>
							<h3>
								<a class="hovera" href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp"> Harvard
									University </a>
							</h3>
							<address>
								Cambridge, MA, United States <br/>(Americas)
							</address>
							<p class="mb-0">
								<span class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-secondary"></span> <span class="review">(1224
									Reviews)</span>
							</p>
						</div>
					</div>
					<div class="d-block d-md-flex listing hoverd">
						<a href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp" class="img d-block"
							style=" background-image:url('${url}images/college/sf.jpg ')"></a>
						<div class="lh-content">
							<span class="category">Public University</span> <a href="#"
								class="bookmark"> <span class="icon-heart"></span>
							</a>
							<h3>
								<a class="hovera" href="${pageContext.request.contextPath}/view/jsp/page/DetailInforUI.jsp"> Stanford
									University </a>
							</h3>
							<address>

								Stanford, CA 94305, United States<br/> (Americas)
							</address>
							<p class="mb-0">
								<span class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-warning"></span> <span
									class="icon-star text-secondary" /> <span class="review">(1120
									Reviews)</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-12 text-center mt-4">
			<a href="/advice"
				class="btn btn-primary rounded py-2 px-4 text-white"> Xem thêm </a>
		</div>
	</div>

    <script src="${url}/js/search.js"></script> 
	<jsp:include page="../component/footer.jsp"></jsp:include>
	<script>	
    $.ajax({
    	url:"${pageContext.request.contextPath}/address",
    	method: "GET",
		success: function(data){
			var list = JSON.parse(data).LtsItem;
			var province = document.getElementsByName("province")[0];
			list.forEach((item, index)=>{
				var ele = document.createElement("option");
				ele.setAttribute("value", item.ID);
				ele.textContent = item.Title;
				province.appendChild(ele);
			})
		}})
	</script>
</body>
</html>