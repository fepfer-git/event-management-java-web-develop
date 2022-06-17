<%@page import="java.util.ArrayList"%>
<%@page import="sample.users.UserDTO"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <head>
        <title>F.E.M</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="UserCSS/kagont/assets/images/x-icon/Biểu-tượng-không-chữ1.png">

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
                                <ul class="menu">
                                    <li>
                                        <%
                                            UserDTO user = (UserDTO) request.getSession().getAttribute("userdata");
                                        %>
                                        <a href="#0"><i class="icofont-user"></i><%= user.getName()%></a>
                                        <ul class="submenu">
                                            <li><a href="MainController?action=profilepage">Profile<i class="icofont-pixels"></i></a></li>

                                            <li><a href="MainController?action=logout" onclick="return confirm('Do you want to log out ?')" >Logout<i class="icofont-delivery-time"></i></a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
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
        <section class="page-header padding-tb">
            <div class="overlay"></div>
            <div class="container">
                <div class="page-header-content-area">
                    <h4 class="ph-title">Login for Event</h4>
                    <ul class="lab-ul">
                        <li><a href="MainController?action=homepage">Home</a></li>
                        <li><a href="#">Features</a></li>
                        <li><a class="active">login</a></li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- Page Header Section Ending Here -->
        <div class="section">
            <div class="container">

                <!-- Page Banner Title Start -->
                <!-- <div class="page-banner-title">
                    <div class="image-container ">
    
                        <img src="UserCSS/kagont/assets/images/blog/avatar csg.jpg"
                            class="umbalahinhtron" alt="avatar">
                    </div>
                    <h2 class="title">Câu Lạc Bộ Truyền Thông Cóc Sài Gòn</h2> 
                    <p class="candong">
                        @cocsaigonfuhcm · Câu lạc bộ giao lưu
                    </p><br>
                    <p>Mô tả: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                        fugiat nulla pariatur. Excepteur sint occaecat...dădwadwadwadasdad ádadsa page-banner-title sdwww</p> 
                </div> -->

                <div class="page-content page-container" id="page-content">
                    <div class="padding1">
                        <div class="row container d-flex justify-content-center">
                            <div class="col-xl-6 col-md-12 fix">
                                <div class="card user-card-full">
                                    <div class="row m-l-0 m-r-0">
                                        <div class="col-sm-4 bg-c-lite-green user-profile">
                                            <div class="d-flex flex-column align-items-center text-center">
                                                <img src="<%=user.getPicture() %>" alt="Admin"
                                                     class="rounded-circle background1" width="150">
                                                <div class="mt-3">
                                                    <h4><%=user.getName()%></h4>
                                                    <p class="text-secondary mb-1">MSED****</p>
                                                    <p class="text-secondary mb-1">Quận 9, TP.Hồ Chí Minh</p>
                                                    <!-- <button class="btn btn-primary">Follow</button>
                                  <button class="btn btn-outline-primary">Message</button> -->
                                                    <ul
                                                        class="social-media social-color justify-content-center d-flex lab-ul">
                                                        <li>
                                                            <a href="https://www.facebook.com/anhtuan141001"
                                                               class="facebook"><i class="icofont-facebook" style="color: rgb(254, 254, 254)"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="https://www.instagram.com/anhtuan_1410/"
                                                               class=""><i class="icofont-instagram" style="color: rgb(254, 254, 254)"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="mailto:tuananhtran1410@gmail.com"
                                                               class=" "><i class="fa fa-envelope" style="color: rgb(254, 254, 254)"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-8">
                                            <%
                                                String test = (String) request.getAttribute("edit");
                                            %>

                                            <div class="card-block">
                                                <%if (test == null) {%>
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <h6 class="m-b-10 f-w-600 mau "><i class="fa fa-user"></i> Full Name</h6>
                                                    </div>                                                        
                                                    <div class="col-sm-9 text-secondary">
                                                        <h6 class="text-muted f-w-400 font"><%=user.getName()%> </h6>
                                                    </div>                                                      
                                                </div>
                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <h6 class="m-b-10 f-w-600 mau"><i class="fa fa-envelope"></i> Email</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                        <h6 class="text-muted f-w-400 font"><%=user.getEmail()%></h6>
                                                    </div>                                                     
                                                </div>
                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <h6 class="m-b-10 f-w-600 mau"><i class="icofont-phone"></i> Phone</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                        <h6 class="text-muted f-w-400 font"><%=user.getPhoneNumber()%></h6>
                                                    </div>
                                                </div>
                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <h6 class="m-b-10 f-w-600 mau"><i class="fa fa-user"></i> Type</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                        <h6 class="text-muted f-w-400 font"><%=user.getTypeName()%></h6>
                                                    </div>
                                                </div>
                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <h6 class="m-b-10 f-w-600 mau"> <i class="fa fa-user"></i> Gender</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                        <h6 class="text-muted f-w-400 font"><%=user.getGender()%></h6>
                                                    </div>
                                                </div>
                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <a class="btn btn-info " target="__blank"
                                                           href="MainController?action=dataType&page=profile.jsp">Edit</a>                                                      
                                                    </div>
                                                </div>
                                                <%} else {%>
                                                <form action="MainController" method="POST">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6 class="m-b-10 f-w-600 mau "><i class="fa fa-user"></i> Full Name</h6>
                                                        </div>                    
                                                        <div class="col-sm-9 text-secondary">
                                                            <div class="col-sm-9 text-secondary">
                                                                <input type="text" value="" class="form-control" name="name">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6 class="m-b-10 f-w-600 mau"><i class="fa fa-envelope"></i> Email</h6>
                                                        </div>        
                                                        <div class="col-sm-9 text-secondary">
                                                            <div class="col-sm-9 text-secondary">
                                                                <input type="text" class="form-control" name="email">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6 class="m-b-10 f-w-600 mau"><i class="icofont-phone"></i> Phone</h6>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <div class="col-sm-9 text-secondary">
                                                                <input type="text" class="form-control" name="phone">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6 class="m-b-10 f-w-600 mau"><i class="fa fa-user"></i> Type</h6>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <select class="form-select" style="color: black" name="usertype">
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
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6 class="m-b-10 f-w-600 mau"> <i class="fa fa-user"></i> Gender</h6>
                                                        </div>          
                                                        <div class="col-sm-9 text-secondary">
                                                            <select  class="form-select" style="color: black" name="gender">
                                                                <option  selected disabled>Select Gender</option>
                                                                <option  value="Male" class="others">Male</option>
                                                                <option  value="Female" class="others">Female</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>
                                                    
                                                    <input type="hidden" name="page" value="profile.jsp" />
                                                    
                                                    <div class="row">
                                                        <input type="hidden" value="<%=user.getId()%>" name="uid">
                                                        <div class="col-sm-12">
                                                            <a class="btn btn-info " target="__blank"
                                                               href="UserProfileController?action=edit">Edit</a>&emsp;
                                                            <button type="submit" name="action" value="updateprofile" class="btn btn-info " target="__blank">Save</button>&emsp;
                                                            <a class="btn btn-info " target="__blank"
                                                               href="profile.jsp">Cancel</a>
                                                        </div>
                                                    </div>
                                                </form>
                                                <%}%>
                                                <!--                                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600 mau"></h6>-->

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login Section Section Starts Here -->
        <!-- <div class="container">
            <div class="main-body">
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="UserCSS/kagont/assets/images/Profile/ảnh cá nhân.jpg" alt="Admin"
                                        class="rounded-circle" width="150">
                                    <div class="mt-3">
                                        <h4>Trần Anh Tuấn</h4>
                                        <p class="text-secondary mb-1">MSED****</p>
                                        <p class="text-muted font-size-sm">Quận 9, TP.Hồ Chí Minh</p> -->
        <!-- <button class="btn btn-primary">Follow</button>
                      <button class="btn btn-outline-primary">Message</button> -->

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
                                        <a href="#">Address: Tp. Thủ Đức, TP.HCM.</a>
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
                                        <p class="mb-30">Trang thông tin chính thức về chương trình dành cho FPTU
                                            campus
                                            HCM: hoạt động CLB, chuyên đề cập nhật kiến thức mới, training kỹ năng
                                            sinh
                                            viên, hoạt động trải nghiệm thực tế.</p>
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
                                                            Ở Đại học FPT có những Câu lạc bộ nào?</a></h6>
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
                                                            điều khiến nhiều sinh viên “ngưỡng mộ” FVC.</a></h6>
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
                                                            href="https://hcmuni.fpt.edu.vn/an-tuong-voi-cau-lac-bo-truyen-thong-gao-coi-cua-truong-dai-hoc-fpt">Ấn
                                                            tượng với Câu lạc bộ Truyền thông "gạo cội" của trường
                                                            Đại
                                                            học
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
                                <p>&copy;2022 <a href="index.html">F.E.M</a> - Best For Event Management Schedule.
                                </p>
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
    </body>

</html>