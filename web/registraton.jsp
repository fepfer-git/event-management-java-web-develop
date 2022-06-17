<%@page import="sample.users.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>F.E.M</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="UserCSS/kagont/assets/images/x-icon/Bi?u-t??ng-không-ch?1.png">

        <link rel="stylesheet" href="UserCSS/kagont/assets/css/animate.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/all.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/icofont.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/lightcase.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/swiper.min.css">
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/style.css">
        <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css' />
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
        <link rel="stylesheet" href="UserCSS/kagont/assets/css/style2.css">
        <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0-beta.1/angular.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0-beta.1/angular-animate.js'></script>
        <script src="UserCSS/kagont/assets/css/script.js"></script>
    </head>

    <body>
        <form class="account-form" method="POST" action="MainController">
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
            <header class="header-section">
                <div class="header-bottom">
                    <div class="container">
                        <div class="header-wrapper">
                            <div class="logo">
                                <a href="MainController?action=homepage">
                                    <img src="UserCSS/kagont/assets/images/resize-logo/TEXT-(153x50)1.png" alt="logo">
                                </a>
                            </div>
                            <div class="menu-area">
                                <ul class="menu">
                                    <li>
                                        <a href="MainController?action=homepage"><i class="fa fa-home"></i>Home</a>
                                    </li>

                                    <li>
                                        <a href="shop.html"><i class="fa fa-cube"></i> Club</a>
                                    </li>
                                    <li>
                                        <a href="speakers.html"><i class="fa fa-calendar-check"></i>Event</a>
                                        <!-- <ul class="submenu">
                                            <li><a class="active" href="speakers.html">All Speakers</a></li>
                                            <li><a href="speaker-details.html">Speaker Details</a></li>
                                        </ul> -->
                                    </li>
                                    <li>
                                        <a href="#0"><i class="icofont-institution"></i>Features</a>
                                        <ul class="submenu">
                                            <li><a href="gallery.html">Gallery<i class="icofont-pixels"></i></a></li>
                                            <li><a href="coming-soon.html">Coming-soon<i class="icofont-delivery-time"></i></a>
                                            </li>

                                        </ul>
                                    </li>


                                    <li>
                                        <a href="blog.html"><i class="fa fa-newspaper"></i>Blog</a>
                                        <!-- <ul class="submenu">
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="blog-single.html">Blog Single</a></li>
                                        </ul> -->
                                    </li>
                                    <li><a href="contact.html"><i class="icofont-ui-message"></i>Contact</a></li>

                                </ul>
                                <!-- partial:index.partial.html -->
                                <div ng-app="demoApp" class="dropdowns">
                                    <div class="wrapper" ng-controller="demoController">
                                        <div class="nav-bar">
                                            <ul>
                                                <li>
                                                    <div class="dropdowns-wrapper">
                                                        <div class="dropdown-container">
                                                            <div class="notifications dropdown dd-trigger"
                                                                 ng-click="showNotifications($event)">
                                                                <span class="count animated"
                                                                      id="notifications-count">{{awaitingNotifications}}</span>
                                                                <span class="fa fa-bell-o"></span>
                                                            </div>
                                                            <div class="dropdown-menu animated" id="notification-dropdown">
                                                                <div class="dropdown-header">
                                                                    <span class="triangle"></span>
                                                                    <span class="heading">Notifications</span>
                                                                    <span class="count"
                                                                          id="dd-notifications-count">{{newNotifications.length}}</span>
                                                                </div>
                                                                <div class="dropdown-body">
                                                                    <div class="notification new"
                                                                         ng-repeat="notification in newNotifications.slice().reverse() track by notification.timestamp">
                                                                        <div class="notification-image-wrapper">
                                                                            <div class="notification-image">
                                                                                <img src="{{notification.user.imageUrl}}" alt=""
                                                                                     width="32">
                                                                            </div>
                                                                        </div>
                                                                        <div class="notification-text">
                                                                            <span
                                                                                class="highlight">{{notification.user.name}}</span>
                                                                            {{notification.action}} {{notification.target}}
                                                                        </div>
                                                                    </div>
                                                                    <div class="notification"
                                                                         ng-repeat="notification in readNotifications.slice().reverse() track by $index">
                                                                        <div class="notification-image-wrapper">
                                                                            <div class="notification-image">
                                                                                <img src="{{notification.user.imageUrl}}" alt=""
                                                                                     width="32">
                                                                            </div>
                                                                        </div>
                                                                        <div class="notification-text">
                                                                            <span
                                                                                class="highlight">{{notification.user.name}}</span>
                                                                            {{notification.action}} {{notification.target}}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- partial -->
                                <div class="padding">
                                    <i class="icofont-login"></i><a href="MainController?action=loginpage">Log In/</a>
                                    <i class="icofont-user"></i><a href="MainController?action=registerpage">Sign Up</a>
                                </div>


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
            <section class="page-header bg_img padding-tb">
                <div class="overlay"></div>
                <div class="container">
                    <div class="page-header-content-area">
                        <h4 class="ph-title">Registration Page</h4>
                        <ul class="lab-ul">
                            <li><a href="MainController?action=homepage">Home</a></li>
                            <li><a class="active">Registration</a></li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- Page Header Section Ending Here -->

            <!-- Registration section start Here -->
            <div class="login-section padding-tb">
                <div class="container">
                    <div class="account-wrapper">
                        <h3 class="title">Register Now</h3>

                        <div class="form-group">
                            <input type="text" placeholder="User Name" name="username">
                            <span style="color:red"><%=(request.getAttribute("errMessageUser") == null) ? "" : request.getAttribute("errMessageUser")%></span>
                        </div>
                        <div class="form-group">
                            <input type="text" placeholder="Full Name" name="fullName">
                            <span style="color:red"><%=(request.getAttribute("errMessageName") == null) ? "" : request.getAttribute("errMessageName")%></span>
                        </div>
                        <div class="form-group">

                            <select class="form-select"  name="userType">
                                <option  selected disabled>Select type of user</option>
                                <%
                                    ArrayList<UserDTO> list = new ArrayList<UserDTO>();
                                    list = (ArrayList<UserDTO>) request.getAttribute("listUserType");
                                    for (UserDTO c : list) {
                                %>
                                <option value="<%=c.getTypeID()%>" class="others"><%=c.getTypeName()%> </option>
                                <%}%>
                            </select>
                        </div>
                        <div>
                            <select  class="form-select" name="gender">

                                <option  selected disabled>Select Gender</option>
                                <option  value="Male" class="others">Male</option>
                                <option  value="Female" class="others">Female</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <input type="text" placeholder="Email" name="email">
                            <span style="color:red"><%=(request.getAttribute("errMessageEmail") == null) ? "" : request.getAttribute("errMessageEmail")%></span>
                        </div>
                        <div class="form-group">
                            <input type="text" placeholder="Phone" name="phone">
                            <span style="color:red"><%=(request.getAttribute("errMessagePhone") == null) ? "" : request.getAttribute("errMessagePhone")%></span>
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" name="password">
                        </div>
                        <span style="color:red"><%=(request.getAttribute("errMessagePassword") == null) ? "" : request.getAttribute("errMessagePassword")%></span>
                        <div class="form-group">
                            <input type="password" placeholder="Confirm Password" name="confirm">
                        </div>
                        <span style="color:red"><%=(request.getAttribute("errMessageRepassword") == null) ? "" : request.getAttribute("errMessageRepassword")%></span>

                        <div class="form-group">
                            <button class="d-block lab-btn" type="submit" name="action" value="Register" ><span>Get Started Now</span></button>
                        </div>
                        
                        <input type="hidden" name="page" value="registraton.jsp" />
                        
                        <span style="color:green"><%=(request.getAttribute("Message") == null) ? "" : request.getAttribute("Message")%></span>                  
                        <div class="account-bottom">
                            <span class="d-block cate pt-10">Are you a member? <a href="MainController?action=loginpage">Login</a></span>
                            <span class="or"><span>or</span></span>
                            <h5 class="subtitle">Register With Social Media</h5>
                            <ul class="social-media social-color justify-content-center d-flex lab-ul">
                                <li>
                                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                </li>
                                <li>
                                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8084/EventManagement/LoginGoogleHandler&response_type=code
                                       &client_id=963569854032-6n5p7l7nc4hl12lo5d1s7feg6qs796ue.apps.googleusercontent.com&approval_prompt=force" class="icofont-email"><i class=""></i></a>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Registration section end Here -->

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
                                                                t??ng v?i Câu l?c b? Truy?n thông "g?o c?i" c?a tr??ng ??i h?c
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