<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
<jsp:include page="../component/menu.jsp"></jsp:include>


<body>

	    <div class="site-blocks-cover2 overlay " style="background-image: url('${url}/images/hero_2.jpg')" data-aos="fade" data-stellar-background-ratio="1"></div>

        <div class="site-section bg-light">
            <div class="container">
                <div class="form-search-wrap mb-3" data-aos="fade-up" data-aos-delay={200}>
                    <form id="search-form" method="GET" action="college-list">
                    <input type="hidden" name="search-method" value="normal"/>
                    <input type="hidden" name="search" value="${search}"/>
                    <input type="hidden" id="input-page" name="page" value="${page}" />
                        <div class="row align-items-center">
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="wrap-icon border">
                                    <span class="icon icon-room"></span>
                                    <select class="form-control rounded" name="province" id>
					                            <option value>Toàn tỉnh</option>
				                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="select-wrap border">
                                    <span class="icon">
                      <span class="icon-keyboard_arrow_down"></span>
                                    </span>
                                    <select class="form-control rounded" name="course" id>
				                      <option value>Tất cả các ngành</option>
										<c:forEach items="${courses}" var="item">
											<option value="${item.name}" ${item.name == course ? "selected" : ""}>${item.name}</option>
										</c:forEach>
                				    </select>
                                </div>
                            </div>
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="select-wrap border">
                                    <span class="icon">
                      <span class="icon-keyboard_arrow_down"></span>
                                    </span>
                                    <select class="form-control rounded" name="type" id>
				                      <option value>Loại khung đào tạo</option>
										<c:forEach items="${frames}" var="item">
											<option value="${item.typeFrame}" ${item.typeFrame == type ? "selected" : ""}>${item.typeFrame}</option>
										</c:forEach>										
				                    </select>	
                        </div>
                            </div>
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                          	 <button type="submit" class="cta btn btn-primary btn-block rounded">
            		            <span class="text-white rounded">Lọc</span>
			                 </button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="row mb-5">
                    <div class="col-md-7 text-left border-primary">
                        <h2 class="font-weight-light text-primary">Kết quả tìm kiếm</h2>
                    </div>
                </div>
                <section class="">
                    <div class="container">
                        <div class="row">
                        <c:forEach items="${colleges}" var="item">
                            <div class="col-md-6 ">
                                <a class=" hover-bg-enlarge link-normal" href="detail?id=${item.id}">
                                    <div class="propertie-item set-bg2 " style="background-image: url('${url}/images/college/cb.jpg')">
                                        <div class="propertie-info text-white" style="background-color: rgba(0, 0, 0, 0.212);">
                                            <div class="info-warp">
                                                <h5>${item.name}</h5>
                                                <p>
                                                    ${item.introduce}
                                                    <br/>
                                                   Website: <a class="link-normal" href="${item.website}">${item.website}</a>
                                                </p>
                                            </div>
                                            <p class="price2 mb-0">
                                                <span class="icon-star text-warning"></span>
                                                <span class="icon-star text-warning"></span>
                                                <span class="icon-star text-warning"></span>

                                                <span class="icon-star text-warning"></span>
                                                <span class="icon-star-half-full text-warning"></span>
                                                <span class="review">(1302 Reviews)</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <hr></hr>
                            </div>
                        	
                        </c:forEach>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <div class="container mt-3 mb-3">
            <div class="rehomes-pagination-counter mb-100 d-flex flex-wrap justify-content-between align-items-center wow fadeInUp" data-wow-delay="200ms" style="visibility: visible" ; animationDelay="200ms" animationName="fadeInUp">

                <nav class="rehomes-pagination">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link ${page-1 <0 ? "disable" :""}" onclick="switchPage(${page-1})">
                                <h5> Trước</h5>
                            </a>
                        </li>
                        <li class="page-item ${page - 1< 0 ? "disable" :""}" onclick="switchPage(${page-1})">
                            <a class="page-link">
                                <h5> ${page-1}</h5>
                            </a>
                        </li>
                        <li class="page-item"  onclick="switchPage(${page})">
                            <a class="page-link active">
                                <h5> ${page}</h5>
                            </a>
                        </li>
                        <li class="page-item ${page+1>countPage? "disable" :""}" onclick="switchPage(${page+1})">
                            <a class="page-link">
                                <h5> ${page+1}</h5>
                            </a>
                        </li>
                        <li class="page-item ${page+1>countPage? "disable" :""}"  onclick="switchPage(${page+1})">
                            <a class="page-link">
                                <h5> Sau</h5>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="page-counter">
                    <p>
                        Trang <span>${page}</span> trong <span>${count}</span> kết quả
                    </p>
                </div>
            </div>
        </div>


	<jsp:include page="../component/footer.jsp"></jsp:include>
	<script type="text/javascript">
	 var provinceId = parseInt(${province});
	 function switchPage(page){
		 	var searchForm = document.getElementById("search-form");
		 	var inputPage = document.getElementById("input-page");
		 	inputPage.value = page;
		 	searchForm.submit();
		 }
    $.ajax({
    	url:"${pageContext.request.contextPath}/address",
    	method: "GET",
		success: function(data){
			var list = JSON.parse(data).LtsItem;
			var province = document.getElementsByName("province")[0];
			list.forEach((item, index)=>{
				var ele = document.createElement("option");
				ele.setAttribute("value", item.ID);
				if(item.ID == provinceId){
					ele.setAttribute("selected", "selected");
				}
				ele.textContent = item.Title;
				province.appendChild(ele);			})
		}})

	</script>
</body>
</html>