<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
<jsp:include page="../component/menu.jsp"></jsp:include>


<body>

	    <div class="site-blocks-cover2 overlay " style="background-image: url('${url}/images/hero_2.jpg')" data-aos="fade" data-stellar-background-ratio="1"></div>

     
        <div class="container mt-3 mb-3">
            <div class="rehomes-pagination-counter mb-100 d-flex flex-wrap justify-content-between align-items-center wow fadeInUp" data-wow-delay="200ms" style="visibility: visible" ; animationDelay="200ms" animationName="fadeInUp">

            
             
            </div>
        </div>


	<jsp:include page="../component/footer.jsp"></jsp:include>
</body>
</html>