<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="zxx">

    <head>
        <title>F.E.M</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="UserCSS/kagont/assets/images/x-icon/01.png">

        <link rel="stylesheet" href="UserCSS/kagont/assets/css/animate.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/all.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/icofont.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/lightcase.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/swiper.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/style.css">
    </head>

    <body>
        <form action="MainController" method="POST" class="account-form">
            <!-- preloader start here -->
            <div class="preloader">
                <div class="preloader-inner">
                    <div class="preloader-icon">
                        <span></span>
                        <span></span>
                    </div>
                </div>
            </div>
            <!-- preloader ending here -->

            <!-- ==========Header Section Starts Here========== -->
            <!-- <header class="header-section">
                <div class="header-bottom">
                    <div class="container">
                        <div class="header-wrapper">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="assets/images/logo/01.png" alt="logo">
                                </a>
                            </div>
                            <div class="menu-area">
                                <ul class="menu">
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
        
                                    <li>
                                        <a href="#0">Features</a>
                                        <ul class="submenu">
                                            <li><a href="gallery.html">Gallery</a></li>
                                            <li><a class="active" href="login.html">Log In</a></li>
                                            <li><a href="registration.html">Sign Up</a></li>
                                            <li><a href="shop.html">Club</a></li>
                                            <li><a href="shop-single.html">Club Single</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                            <li><a href="coming-soon.html">Coming-soon</a></li>
        
                                        </ul>
                                    </li>
                                    
                                    <li>
                                        <a href="blog.html">Blog</a>
                                        
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                                <div class="cart-ticket">
                                    <div class="cart-icon">
                                        
        
                                        <div class="cart-content">
                                            <ul class="cart-list">
                                                <li class="cart-item">
                                                    <div class="cart-inner">
                                                        <div class="cart-thumb">
                                                            <img src="assets/images/product/menu_cart_01.jpg" alt="product">
                                                        </div>
                                                        <div class="cart-details">
                                                            <h6><a href="#">Product Text Here</a></h6>
                                                            <p>Quantity: 1 <span>$56</span></p>
                                                            <div class="close-btn">
                                                                <a href="#"><i class="icofont-close"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="cart-item">
                                                    <div class="cart-inner">
                                                        <div class="cart-thumb">
                                                            <img src="assets/images/product/menu_cart_02.jpg" alt="product">
                                                        </div>
                                                        <div class="cart-details">
                                                            <h6><a href="#">Product Text Here</a></h6>
                                                            <p>Quantity: 1 <span>$56</span></p>
                                                            <div class="close-btn">
                                                                <a href="#"><i class="icofont-close"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="cart-item">
                                                    <div class="cart-inner">
                                                        <div class="cart-thumb">
                                                            <img src="assets/images/product/menu_cart_03.jpg" alt="product">
                                                        </div>
                                                        <div class="cart-details">
                                                            <h6><a href="#">Product Text Here</a></h6>
                                                            <p>Quantity: 1 <span>$56</span></p>
                                                            <div class="close-btn">
                                                                <a href="#"><i class="icofont-close"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <a href="#" class="lab-btn">
                                                Checkout
                                            </a>
                                        </div>
                                    </div>
                                    
                                </div> -->

            <!-- toggle icons -->
            <!-- <div class="header-bar d-lg-none">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    </div>
    </div>
    </header> -->
            <!-- ==========Header Section Ends Here========== -->

            <!-- ==========Header Section Starts Here========== -->
            <header class="header-section">
                <div class="header-bottom">
                    <div class="container">
                        <div class="header-wrapper">
                            <div class="logo">
                                <a href="MainController?action=homepage">
                                    <img src="UserCSS/kagont/assets/images/logo/01.png" alt="logo">
                                </a>
                            </div>
                            <div class="menu-area">
                                <ul class="menu">
                                    <li>

                                        <a href="MainController?action=homepage" ><i class="icofont-home"></i>Home</a>
                                    </li>

                                    <li>
                                        <a href="shop.html"><i class="icofont-diners-club-alt-1"></i>Club</a></li>
                                    <li>
                                        <a href="#0"><i class="icofont-leaf"></i>Features</a>
                                        <ul class="submenu">
                                            <li><a href="gallery.html">Gallery<i class="icofont-pixels"></i></a></li>
                                            <li><a href="coming-soon.html">Coming-soon<i class="icofont-delivery-time"></i></a></li>

                                        </ul>
                                    </li>


                                    <li>
                                        <a href="blog.html"><i class="icofont-blogger"></i>Blog</a>
                                        <!-- <ul class="submenu">
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="blog-single.html">Blog Single</a></li>
                                        </ul> -->
                                    </li>
                                    <li><a href="contact.html"><i class="icofont-contacts"></i>Contact</a></li>

                                </ul>
                                <i class="icofont-login"></i><a href="MainController?action=loginpage">Log In/</a>

                                <i class="icofont-user"></i><a href="MainController?action=registerpage">Sign Up</a>

                                <!-- toggle icons -->
                                <div class="header-bar d-lg-none">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- ==========Header Section Ends Here========== -->

            <!-- Page Header Section Start Here -->
            <section class="page-header padding-tb">
                <div class="overlay"></div>
                <div class="container">
                    <div class="page-header-content-area">
                        <h4 class="ph-title">Login for Event</h4>
                        <ul class="lab-ul">
                            <li><a href="MainController?action=homepage">Home</a></li>
                            <li><a class="active">login</a></li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- Page Header Section Ending Here -->

            <!-- Login Section Section Starts Here -->
            <div class="login-section padding-tb">
                <div class=" container">
                    <div class="account-wrapper">
                        <h3 class="title">Login</h3>

                        <div class="form-group">
                            <input type="text" placeholder="User Name" name="username">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" name="password">
                        </div>
                        <div class="form-group">
                            <div class="d-flex justify-content-between flex-wrap pt-sm-2">
                                <div class="checkgroup">
                                    <input type="checkbox" name="remember" id="remember">
                                    <label for="remember">Remember Me</label>
                                </div>
                                <a href="#">Forget Password?</a>
                            </div>
                        </div>
                        <span style="color:red"><%=(request.getAttribute("errMsg") == null) ? "" : request.getAttribute("errMsg")%></span>
                        <div class="form-group">
                            <button type="submit" name="action" value="Login" class="d-block lab-btn"><span>Submit Now</span></button>
                        </div>

                        <div class="account-bottom">
                            <span class="d-block cate pt-10">Don?t Have any Account? <a href="MainController?action=registerpage"> Sign
                                    Up</a></span>
                            <span class="or"><span>or</span></span>
                            <h5 class="subtitle">Login With Social Media</h5>
                            <ul class="social-media social-color lab-ul d-flex justify-content-center">
                                <li>
                                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                </li>
                                <li>
                                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/EventManagement/LoginGoogleHandler&response_type=code
                                       &client_id=963569854032-6n5p7l7nc4hl12lo5d1s7feg6qs796ue.apps.googleusercontent.com&approval_prompt=force" class="email"><i class="icofont-email"></i></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Login Section Section Ends Here -->

            <!-- Footer Section start here -->
            <footer class="footer-section" style="background-image: url(UserCSS/kagont/assets/images/bg-images/footer-bg.png);">
                <div class="footer-top">
                    <div class="container">
                        <div class="row g-3 justify-content-center g-lg-0">
                            <div class="col-lg-4 col-sm-6 col-12">
                                <div class="footer-top-item lab-item">
                                    <div class="lab-inner">
                                        <div class="lab-thumb">
                                            <img src="UserCSS/kagont/assets/images/footer/footer-top/01.png" alt="Phone-icon">
                                        </div>
                                        <div class="lab-content">
                                            <a href="#">Phone Number : +84 528 68 71 48</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-12">
                                <div class="footer-top-item lab-item">
                                    <div class="lab-inner">
                                        <div class="lab-thumb">
                                            <img src="UserCSS/kagont/assets/images/footer/footer-top/02.png" alt="email-icon">
                                        </div>
                                        <div class="lab-content">
                                            <a href="emailto: daihoc.hcm@fpt.edu.vn">Email : daihoc.hcm@fpt.edu.vn</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-12">
                                <div class="footer-top-item lab-item">
                                    <div class="lab-inner">
                                        <div class="lab-thumb">
                                            <img src="UserCSS/kagont/assets/images/footer/footer-top/03.png" alt="location-icon">
                                        </div>
                                        <div class="lab-content">
                                            <a href="#">Address: Tp. Th? ??c, TP.HCM.</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-middle padding-tb">
                    <div class="container">
                        <div class="row shape-c">
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="footer-middle-item-wrapper">
                                    <div class="footer-middle-item mb-5 mb-lg-0">
                                        <div class="fm-item-title">
                                            <h5>About F.E.M</h5>
                                        </div>
                                        <div class="fm-item-content">
                                            <p class="mb-30">Trang thông tin chính th?c v? ch??ng trình dành cho FPTU campus
                                                HCM: ho?t ??ng CLB, chuyên ?? c?p nh?t ki?n th?c m?i, training k? n?ng sinh
                                                viên, ho?t ??ng tr?i nghi?m th?c t?.</p>
                                            <img class="rounded footer-abt-img"
                                                 src="UserCSS/kagont/assets/images/footer/footer-middle/370X200.jpg" alt="about-image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="footer-middle-item-wrapper">
                                    <div class="footer-middle-item mb-5 mb-lg-0">
                                        <div class="fm-item-title">
                                            <h5>our Recent news</h5>
                                        </div>
                                        <div class="fm-item-content">
                                            <div class="fm-item-widget lab-item">
                                                <div class="lab-inner">
                                                    <div class="lab-thumb">
                                                        <a
                                                            href="https://hcmuni.fpt.edu.vn/o-dai-hoc-fpt-co-nhung-cau-lac-bo-nao">
                                                            <img src="UserCSS/kagont/assets/images/footer/footer-middle/100X80.01.jpg"
                                                                 alt="footer-widget-img"></a>
                                                    </div>
                                                    <div class="lab-content">
                                                        <h6><a
                                                                href="https://hcmuni.fpt.edu.vn/o-dai-hoc-fpt-co-nhung-cau-lac-bo-nao">
                                                                ? ??i h?c FPT có nh?ng Câu l?c b? nào?</a></h6>
                                                        <p>September 20, 2022</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fm-item-widget lab-item">
                                                <div class="lab-inner">
                                                    <div class="lab-thumb">
                                                        <a
                                                            href="https://hcmuni.fpt.edu.vn/3-dieu-khien-nhieu-sinh-vien-ngung-mo-fvc"><img
                                                                src="UserCSS/kagont/assets/images/footer/footer-middle/100X80.02.jpg"
                                                                alt="footer-widget-img"></a>
                                                    </div>
                                                    <div class="lab-content">
                                                        <h6><a
                                                                href="https://hcmuni.fpt.edu.vn/3-dieu-khien-nhieu-sinh-vien-ngung-mo-fvc">3
                                                                ?i?u khi?n nhi?u sinh viên ?ng??ng m?? FVC.</a></h6>
                                                        <p>December 23, 2021</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fm-item-widget lab-item">
                                                <div class="lab-inner">
                                                    <div class="lab-thumb">
                                                        <a
                                                            href="https://hcmuni.fpt.edu.vn/an-tuong-voi-cau-lac-bo-truyen-thong-gao-coi-cua-truong-dai-hoc-fpt"><img
                                                                src="UserCSS/kagont/assets/images/footer/footer-middle/100X80.03.jpg"
                                                                alt="footer-widget-img"></a>
                                                    </div>
                                                    <div class="lab-content">
                                                        <h6><a
                                                                href="https://hcmuni.fpt.edu.vn/an-tuong-voi-cau-lac-bo-truyen-thong-gao-coi-cua-truong-dai-hoc-fpt">?n
                                                                t??ng v?i Câu lạc bộ truyền thôn Cóc Sài Gòn 
                                                                FPT
                                                            </a></h6>
                                                        <p>July 29, 2021</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="footer-middle-item-wrapper">
                                    <div class="footer-middle-item-3 mb-5 mb-lg-0">
                                        <div class="fm-item-title">
                                            <h5>OUR NEWSLETTER</h5>
                                        </div>
                                        <div class="fm-item-content">
                                            <p>F.E.M is a event organization supported
                                                by community leaders</p>

                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter email">
                                            </div>
                                            <a href="mailto:daihoc.hcm@fpt.edu.vn">
                                                <button type="submit" class="lab-btn">Send Massage <i
                                                        class="icofont-paper-plane"></i></button>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="footer-bottom-content text-center">
                                    <p>&copy;2022 <a href="index.html">F.E.M</a> - Best For Event Management Schedule.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Footer Section end here -->



            <!-- scrollToTop start here -->
            <a href="#" class="scrollToTop"><i class="icofont-bubble-up"></i><span class="pluse_1"></span><span
                    class="pluse_2"></span></a>
            <!-- scrollToTop ending here -->

            <script src="UserCSS/kagont/assets/js/jquery.js"></script>
            <script src="UserCSS/kagont/assets/js/fontawesome.min.js"></script>
            <script src="UserCSS/kagont/assets/js/waypoints.min.js"></script>
            <script src="UserCSS/kagont/assets/js/bootstrap.bundle.min.js"></script>
            <script src="UserCSS/kagont/assets/js/swiper.min.js"></script>
            <script src="UserCSS/kagont/assets/js/circularProgressBar.min.js"></script>
            <script src="UserCSS/kagont/assets/js/isotope.pkgd.min.js"></script>
            <script src="UserCSS/kagont/assets/js/lightcase.js"></script>
            <script src="UserCSS/kagont/assets/js/functions.js"></script>
        </form>
    </body>

</html>