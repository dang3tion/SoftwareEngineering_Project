<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<c:url var="url" scope="session" value="/view"></c:url>
<html>
<jsp:include page="../component/menu.jsp"></jsp:include>


<body>

	    <div class="site-blocks-cover2 overlay " style="background-image: url('${url}/images/hero_2.jpg')" data-aos="fade" data-stellar-background-ratio="1"></div>

        <div class="site-section bg-light">
            <div class="container">
                <div class="form-search-wrap mb-3" data-aos="fade-up" data-aos-delay={200}>
                    <form method="post">
                        <div class="row align-items-center">
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="wrap-icon border">
                                    <span class="icon icon-room"></span>
                                    <select class="form-control rounded" name id>
                      <option value>All area</option>
                      <option value>Asia</option>
                      <option value>Europe</option>
                      <option value>Africa</option>
                      <option value> Americas</option>
                      <option value>Oceania</option>
                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="select-wrap border">
                                    <span class="icon">
                      <span class="icon-keyboard_arrow_down"></span>
                                    </span>
                                    <select class="form-control rounded" name id>
                      <option value>All Major</option>
                      <option value>Information Technology</option>
                      <option value>Economics</option>
                      <option value>Marketing</option>
                      <option value> Mechanics</option>
                      <option value> Business English</option>
                      <option value> Finance and Banking</option>
                      <option value> Business Administration</option>
                      <option value> Chemical Engineering </option>
                      <option value> Trade Marketing</option>
                      <option value> Nuclear Engineering</option>
                      <option value> International Trade</option>
                      <option value>Others</option>
                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="select-wrap border">
                                    <span class="icon">
                      <span class="icon-keyboard_arrow_down"></span>
                                    </span>
                                    <select class="form-control rounded" name id>
                      <option value>Type</option>
                      <option value>Public University</option>
                      <option value>Private University</option>
                      <option value>Public College</option>
                      <option value>Private College</option>
                      <option value>Nation University</option>
                      <option value>Institutes</option>
                      <option value>Centres</option>
                      <option value>Others</option>
                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                <div class="select-wrap border">
                                    <span class="icon">
                      <span class="icon-keyboard_arrow_down"></span>
                                    </span>
                                    <select class="form-control rounded" name id>
                      <option value>Top University</option>
                      <option value>Top 10 Europe</option>
                      <option value>Top 10 Asia</option>
                      <option value>Top 10 Americas</option>
                      <option value>Top 20 in the world</option>

                      <option value>Others</option>
                    </select>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-12 col-xl-2 ml-auto text-right">
                    <a href="#" class="cta btn btn-primary btn-block rounded">
                        <span class="text-white rounded">Filter</span>
                    </a>
                </div>

                <div class="row mb-5">
                    <div class="col-md-7 text-left border-primary">
                        <h2 class="font-weight-light text-primary">Result</h2>
                    </div>
                </div>
                <section class="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 ">
                                <a class=" hover-bg-enlarge" href="/home/detail">
                                    <div class="propertie-item set-bg2 " style="background-image: url('${url}/images/college/cb.jpg')">
                                        <div class="propertie-info text-white" style="background-color: rgba(0, 0, 0, 0.212);">
                                            <div class="info-warp">
                                                <h5>University of Cambridge</h5>

                                                <p>
                                                    The Old Schools, Trinity Ln, Cambridge CB2 1TN, United Kingdom
                                                   <br/> (Europe)
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
                            <div class="col-md-6 ">
                                <a class=" hover-bg-enlarge" href="/home/detail">
                                    <div class="propertie-item set-bg2 " style="background-image: url('${url}/images/college/cb.jpg')">
                                        <div class="propertie-info text-white " style="background-color: rgba(0, 0, 0, 0.212);">
                                            <div class="info-warp">
                                                <h5>University of Cambridge</h5>

                                                <p>
                                                    The Old Schools, Trinity Ln, Cambridge CB2 1TN, United Kingdom
                                                   <br/> (Europe)
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
                            <div class="col-md-6 ">
                                <a class=" hover-bg-enlarge" href="/home/detail">
                                    <div class="propertie-item set-bg2 " style="background-image: url('${url}/images/college/cb.jpg')">
                                        <div class="propertie-info text-white " style="background-color: rgba(0, 0, 0, 0.212);">
                                            <div class="info-warp">
                                                <h5>University of Cambridge</h5>

                                                <p>
                                                    The Old Schools, Trinity Ln, Cambridge CB2 1TN, United Kingdom<br/> (Europe)
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
                            <div class="col-md-6 ">
                                <a class=" hover-bg-enlarge" href="/home/detail">
                                    <div class="propertie-item set-bg2 " style="background-image: url('${url}/images/college/cb.jpg')">
                                        <div class="propertie-info text-white " style="background-color: rgba(0, 0, 0, 0.212);">
                                            <div class="info-warp">
                                                <h5>University of Cambridge</h5>

                                                <p>
                                                    The Old Schools, Trinity Ln, Cambridge CB2 1TN, United Kingdom
                                                   <br/> (Europe)
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
                            <a class="page-link" href="#">
                                <h5> 1</h5>
                            </a>
                        </li>
                        <li class="page-item">
                            <a class="page-link active" href="#">
                                <h5> 2</h5>
                            </a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">
                                <h5> 3</h5>
                            </a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">
                                <h5> Next</h5>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="page-counter">
                    <p>
                        Page <span>1</span> of <span>60</span> results
                    </p>
                </div>
            </div>
        </div>


	<jsp:include page="../component/footer.jsp"></jsp:include>
</body>
</html>