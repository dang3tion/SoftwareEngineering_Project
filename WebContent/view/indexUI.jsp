<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:url value="/view" var="url"></c:url>

<head>
    <title>DirectoryAds &mdash; Colorlib Website Template</title>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800" rel="stylesheet">
    <link rel="stylesheet" href="${url}/fonts/icomoon/style.css">

    <link rel="stylesheet" href="${url}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${url}/css/magnific-popup.css">
    <link rel="stylesheet" href="${url}/css/jquery-ui.css">
    <link rel="stylesheet" href="${url}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${url}/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="${url}/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="${url}/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="${url}/css/aos.css">
    <link rel="stylesheet" href="${url}/css/rangeslider.css">

    <link rel="stylesheet" href="${url}/css/style.css">
    <link rel="stylesheet" href="${url}/css/search.css">

</head>

<body>

    <div class="site-wrap">

        <div class="site-mobile-menu">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close mt-3">
                    <span class="icon-close2 js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div>

        <header class="site-navbar container py-0 " role="banner">

            <div class="row align-items-center">
                <div class="col-6 col-xl-2">
                    <h1 class="mb-0 site-logo">
                        <a class="" href="/" class="text-white mb-0">
              IFly College
            </a>
                    </h1>
                </div>
                <div class="col-12 col-md-10 d-none d-xl-block">
                    <nav class="site-navigation position-relative text-right" role="navigation">
                        <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li class="active hover-menu">
                                <a href="/home">
                  Home
                </a>
                            </li>
                            <li class="active hover-menu">
                                <a href="/searching">
                  Filter
                </a>
                            </li>
                            <li class="active hover-menu">
                                <a href="/admission">
                  Admission
                </a>
                            </li>
                            <li class="active hover-menu">
                                <a href="/advice">
                  Advice
                </a>
                            </li>
                            <li class="active hover-menu">
                                <a href="/introduce">
                  Introduce
                </a>
                            </li>
                            <li class="active hover-menu">
                                <a href="/contact">
                  Contact
                </a>
                            </li>
                            <li class="ml-xl-3 login hover-menu">
                                <a href="/login">
                                    <span class="border-left pl-xl-4"> Log In</span>
                                </a>
                            </li>
                            <li class="hover-regis">
                                <a class="" href="/signup" class="cta">
                                    <span class="bg-primary text-white rounded p-2">
                    Register
                  </span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style=" position: relative; top: 3px ">
                    <a href="#" class="site-menu-toggle js-menu-toggle text-white">
                        <span class="icon-menu h3"></span>
                    </a>
                </div>
            </div>
        </header>

        <div class="site-blocks-cover overlay" style=" background-image:url('${url}/images/hero_2.jpg')" data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-12">
                        <div class="row justify-content-center mb-4">
                            <div class="col-md-8 text-center">
                                <h1 class data-aos="fade-up">
                                    Welcome to IFLY College
                                </h1>
                                <p data-aos="fade-up" data-aos-delay={100}>
                                    Look up the most interesting college
                                </p>
                            </div>
                        </div>
                        <div class="form-search-wrap mb-3" data-aos="fade-up" data-aos-delay={200}>
                            <form method="post">
                                <div class="row align-items-center">
                                    <div class="col-lg-12 mb-4 mb-xl-0 col-xl-4 search-input">
                                        <input type="text" class="form-control rounded" placeholder="Enter college name " autoFocus />
										<div class="autocom-box"></div>
								        <div class="icon"><i class="fas fa-search"></i>
        							</div>
										
                                    </div>
                                    <div class="col-lg-12 mb-4 mb-xl-0 col-xl-3">
                                        <div class="wrap-icon">
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
                                        <div class="select-wrap">
                                            <span class="icon">
                          <span class="icon-keyboard_arrow_down"></span>
                                            </span>
                                            <select class="form-control rounded" name id>
                          <option value>All major</option>
                          <option value>Information Technology</option>
                          <option value>Economics</option>
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

                                    <div class="col-lg-12 col-xl-2 ml-auto text-right">
                                        <NavLink to="/searching" class="cta btn btn-primary btn-block rounded">
                                            <span class="bg-primary text-white rounded">
                          Go to Filter
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
                        <h2 class="font-weight-light text-primary">
                            Top Searching
                        </h2>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-lg-6">
                        <div class="d-block d-md-flex listing hoverd">
                            <a href="/searching/detail" class="img d-block" style="background-image: url( '${url}/images/college/cb2.jpg')"></a>
                            <div class="lh-content">
                                <span class="category">Public University</span>
                                <a href="#" class="bookmark">
                                    <span class="icon-heart"></span>
                                </a>
                                <h3>
                                    <a class="hovera" href="/searching/detail">
                  University of Cambridge
                </a>
                                </h3>
                                <address>
                Cambridge CB2 1TN, United Kingdom (Europe)
              </address>
                                <p class="mb-0">
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star-half-full text-warning"></span>
                                    <span class="review">(1203 Reviews)</span>
                                </p>
                            </div>
                        </div>
                        <div class="d-block d-md-flex listing hoverd">
                            <a href="/searching/detail" class="img d-block" style="background-image: url(  '${url}/images/college/hv.jpg') "></a>
                            <div class="lh-content">
                                <span class="category">Public University</span>
                                <a href="#" class="bookmark">
                                    <span class="icon-heart"></span>
                                </a>
                                <h3>
                                    <a class="hovera" href="/searching/detail">
                  Harvard University
                </a>
                                </h3>
                                <address>
                Cambridge, MA, United States <br></br>(Americas)
              </address>
                                <p class="mb-0">
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-secondary"></span>
                                    <span class="review">(1224 Reviews)</span>
                                </p>
                            </div>
                        </div>
                        <div class="d-block d-md-flex listing hoverd">
                            <a href="/searching/detail" class="img d-block" style=" background-image:url(' ${url}/images/college/sf.jpg ')"></a>
                            <div class="lh-content">
                                <span class="category">Public University</span>
                                <a href="#" class="bookmark">
                                    <span class="icon-heart"></span>
                                </a>
                                <h3>
                                    <a class="hovera" href="/searching/detail">
                  Stanford University
                </a>
                                </h3>
                                <address>
                 
                Stanford, CA 94305, United States<br></br> (Americas)
              </address>
                                <p class="mb-0">
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-secondary" />
                                    <span class="review">(1120 Reviews)</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="d-block d-md-flex listing hoverd">
                            <a href="/searching/detail" class="img d-block" style="background-image: url( '${url}/images/college/cb2.jpg')"></a>
                            <div class="lh-content">
                                <span class="category">Public University</span>
                                <a href="#" class="bookmark">
                                    <span class="icon-heart"></span>
                                </a>
                                <h3>
                                    <a class="hovera" href="/searching/detail">
                      University of Cambridge
                    </a>
                                </h3>
                                <address>
                    Cambridge CB2 1TN, United Kingdom (Europe)
                  </address>
                                <p class="mb-0">
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star-half-full text-warning"></span>
                                    <span class="review">(1203 Reviews)</span>
                                </p>
                            </div>
                        </div>
                        <div class="d-block d-md-flex listing hoverd">
                            <a href="/searching/detail" class="img d-block" style="background-image: url(  '${url}/images/college/hv.jpg') "></a>
                            <div class="lh-content">
                                <span class="category">Public University</span>
                                <a href="#" class="bookmark">
                                    <span class="icon-heart"></span>
                                </a>
                                <h3>
                                    <a class="hovera" href="/searching/detail">
                      Harvard University
                    </a>
                                </h3>
                                <address>
                    Cambridge, MA, United States <br></br>(Americas)
                  </address>
                                <p class="mb-0">
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-secondary"></span>
                                    <span class="review">(1224 Reviews)</span>
                                </p>
                            </div>
                        </div>
                        <div class="d-block d-md-flex listing hoverd">
                            <a href="/searching/detail" class="img d-block" style=" background-image:url('${url}/images/college/sf.jpg ')"></a>
                            <div class="lh-content">
                                <span class="category">Public University</span>
                                <a href="#" class="bookmark">
                                    <span class="icon-heart"></span>
                                </a>
                                <h3>
                                    <a class="hovera" href="/searching/detail">
                      Stanford University
                    </a>
                                </h3>
                                <address>
                     
                    Stanford, CA 94305, United States<br></br> (Americas)
                  </address>
                                <p class="mb-0">
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-warning"></span>
                                    <span class="icon-star text-secondary" />
                                    <span class="review">(1120 Reviews)</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="site-section bg-light">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 text-center border-primary">
                        <h2 class="font-weight-light text-primary">
                            Advice to choose your major
                        </h2>
                        <p class="color-black-opacity-5"></p>
                    </div>
                </div>
                <div class="row mb-3 align-items-stretch">
                    <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                        <div class="h-entry">
                            <a href="/advice/detail">
                                <img src="${url}/images/nna.jpg" alt="Image" width="330px" height="218px" />
                            </a>
                            <h2 class="font-size-regular">
                                <a href="/advice/detail" class="hovera">
                    English language
                  </a>
                            </h2>
                            <div class="meta mb-3">
                                <span class="mx-1">•</span> Jan 18, 2019
                                <span class="mx-1">•</span> <a href="#">News</a>
                            </div>
                            <p>
                                English language, Japanese language, etc. are currently the hot language industry that are popular with young people today. English has become a global language and dozens of countries use it as their primary language.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                        <div class="h-entry ">
                            <a href="/advice/detail">

                                <img src="${url}/images/cnsh.jpg" alt="Image" width="330px" height="218px" />
                            </a>
                            <h2 class="font-size-regular">
                                <a href="/advice/detail" class="hovera">
                    Biotechnology
                  </a>
                            </h2>
                            <div class="meta mb-3">
                                <span class="mx-1">•</span> Jan 18, 2019
                                <span class="mx-1">•</span> <a href="#">News</a>
                            </div>
                            <p>
                                Biotechnology is the study and application of living organisms in combination with processes and technical equipment to create industrial-scale products and production with biological products that serve children's interests.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                        <div class="h-entry">
                            <a href="/advice/detail">
                                <img src="${url}//images/cntt.jpg" alt="Image" width="330px" height="218px" />
                            </a>
                            <h2 class="font-size-regular">
                                <a href="/advice/detail" class="hovera">
                    Information Technology
                  </a>
                            </h2>
                            <div class="meta mb-3">
                                <span class="mx-1">•</span> Jan 18, 2019
                                <span class="mx-1">•</span> <a href="#">News</a>
                            </div>
                            <p>
                                IT - Information Technology is a term that includes software, internet networks, computer systems used for the distribution and processing of data, exchange, storage and use of information in various forms.
                            </p>
                        </div>
                    </div>
                    <div class="col-12 text-center mt-4">
                        <a href="/advice" class="btn btn-primary rounded py-2 px-4 text-white">
                View All Posts
              </a>
                    </div>
                </div>
            </div>
        </div>


        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-6">
                                <h2 class="footer-heading mb-4">About</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
                            </div>

                            <div class="col-md-3">
                                <h2 class="footer-heading mb-4">Navigations</h2>
                                <ul class="list-unstyled">
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-md-3">
                                <h2 class="footer-heading mb-4">Follow Us</h2>
                                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <form action="#" method="post">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </footer>
    </div>

    <script src="${url}/js/jquery-3.3.1.min.js"></script>
    <script src="${url}/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${url}/js/jquery-ui.js"></script>
    <script src="${url}/js/popper.min.js"></script>
    <script src="${url}/js/bootstrap.min.js"></script>
    <script src="${url}/js/owl.carousel.min.js"></script>
    <script src="${url}/js/jquery.stellar.min.js"></script>
    <script src="${url}/js/jquery.countdown.min.js"></script>
    <script src="${url}/js/jquery.magnific-popup.min.js"></script>
    <script src="${url}/js/bootstrap-datepicker.min.js"></script>
    <script src="${url}/js/aos.js"></script>
    <script src="${url}/js/rangeslider.min.js"></script>

    <script src="${url}/js/main.js"></script>
    
    <script src="${url}/js/search.js"></script> 

</body>

</html>