
<%@page import="sample.room.RoomDTO"%>
<%@page import="sample.users.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sample.motel.MotelDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link rel="shortcut icon" href="./assets/img/logo2.png">
        <!-- BS4 CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <!-- FONT -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap"
            rel="stylesheet">
        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
              integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- owl carousels -->
        <link rel="stylesheet" href="./assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css">

        <!-- main CSS -->
        <link rel="stylesheet" href="./assets/css/main.css">
    </head>

    <body>
        <!-- HEADER -->
        <header>

            <div class="header__top d-flex justify-content-between align-items-center container-fluid py-2 fixed-top">
                <div class="header__left">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="mailto:hotel.management@gmail.com" class="text-white text-decoration-none"><i
                            class="fa fa-envelope"></i> hotel.management@gmail.com</a>
                    <a href="tel:0865644162" class="text-white mr-4 text-decoration-none"><i class="fas fa-phone-alt"></i>
                        0865.644.162</a>
                </div>
                <div class="header__right">
                    <button type="button" class="button--primary btn btn-sm">
                        <a href="#" class="border-left-0 m-0 p-0">Quản lý thuê trọ</a>
                    </button>

                    <a href="./login.jsp">Đăng nhập</a>

                    <a href="./signup.jsp">Đăng ký</a>

                </div>
            </div>
            <div class="header__bottom">
                <nav class="myNavBar navbar navbar-expand-lg navbar-dark container-fluid">
                    <a class="navbar-brand" href="#"><img class="logo img-fluid" src="./assets/img/logo2-1.png"
                                                          alt="logo"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Về chúng tôi</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Đại lý kinh doanh</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Bảng giá dịch vụ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Đội ngũ & Đối tác</a>
                            </li>
                        </ul>
                    </div>

                    <div class="header__bottom__right">
                        <form class="header__bottom--search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Bạn muốn ở đâu?">
                                <div class="input-group-append">
                                    <span class="input-group-text" id="basic-addon2">
                                        <i class="fa fa-search"></i>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                </nav>
            </div>
        </header>

        <!-- INFOR -->
        <section class="infor">
            <div class="background-infor">
                <div id="carouselBanner" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./assets/img/cover-1.jpg" class="d-block w-100" alt="cover-1">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/cover-2.jpg" class="d-block w-100" alt="cover-2">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/cover-3.jpg" class="d-block w-100" alt="cover-3">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselBanner" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselBanner" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="infor__content container">
                <div class="row">
                    <div class="col-12 col-md-4  d-flex my-5">
                        <div class="image">
                            <img src="./assets/img/best-choice.jpg" alt="best-choice">
                        </div>
                        <div class="content">
                            <h4>Lựa chọn tốt nhất</h4>
                            <p>HORD đưa cho bạn những lựa chọn phù hợp về nhà trọ để bạn có một cuộc sống vui vẻ.</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 d-flex my-5">
                        <div class="image">
                            <img src="./assets/img/security.jpg" alt="security">
                        </div>
                        <div class="content">
                            <h4>An toàn & bảo mật</h4>
                            <p>Thông tin minh bạch, bảo mật cao cùng với những dịch vụ uy tín đem lại trải nghiệm tốt nhất
                                cho bạn</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 d-flex  my-5">
                        <div class="image">
                            <img src="./assets/img/support.jpg" alt="img3">
                        </div>
                        <div class="content">
                            <h4>Hỗ trợ 24/7</h4>
                            <p>Luôn luôn lắng nghe, luôn luôn hỗ trợ bạn về tất cả dịch vụ tại HORD.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- MOTEL -->
        <section class="motel container">
            <h3 class="heading">TIN CHO THUÊ</h3>
            <div class="motel__content">
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <a href="#" class="motel-image">
                            <img class="img-fluid" src="./assets/img/nha-tro-1.jpeg" alt="nt1">
                        </a>
                        <div class="motel-title my-4">
                            <a href="#" class="text-decoration-none">NHÀ CHO THUÊ NGUYÊN CĂN T5.2022</a>
                        </div>
                        <div class="motel-address my-2">
                            <p>Quận Tân Bình, Thành phố Hồ Chí Minh</p>
                        </div>
                        <div class="motel-services my-2">
                            <p>Dịch vụ: thay ga gối 1 lần/...</p>
                        </div>
                        <div class="d-flex justify-content-between my-2">
                            <p>Liên hệ</p>
                            <p><i class="fas fa-history"></i> một ngày trước</p>
                        </div>
                        <div class="motel-price d-flex justify-content-between">
                            <p>7.0 Triệu</p>
                            <button class="button--primary">Xem ngay</button>
                        </div>
                    </div>
                </div> 
            </div>   
        </section>
        <section>
            <div class="card">
                <div class="card-body">

                    <ul class="nav nav-tabs">

                        <%
                            List<MotelDTO> showMotel = (ArrayList<MotelDTO>) request.getAttribute("LIST_MOTELINDEX");
                            if (showMotel != null) {
                                if (showMotel.size() > 0) {
                                    for (MotelDTO motel : showMotel) {

                        %>
                        <div class="owl-carousel owl-theme">
                                <div class="item">
                                    <a href="#" class="motel-image">
                                        <img class="img-fluid" src="./assets/img/nha-tro-1.jpeg" alt="nt1">
                                    </a>
                                    <div class="motel-title my-4">
                                        <span><%= motel.getName()%></span>
                                    </div>
                                    <div class="motel-address my-2">
                                        <span> <%= motel.getAddress()%>,<%= motel.getDistrict()%>,<%= motel.getCity()%></span>
                                    </div>
                                    <div class="motel-services my-2">
                                        <p>Dịch vụ: thay ga gối 1 lần/...</p>
                                    </div>
                                    <div class="d-flex justify-content-between my-2">
                                        <p>Liên hệ</p>
                                        <p><i class="fas fa-history"></i> một ngày trước</p>
                                    </div>
                                    <div class="motel-price d-flex justify-content-between">
                                        <p>7.0 Triệu</p>
                                        <button class="button--primary">Xem ngay</button>
                                    </div>
                                </div>
                            </div>
                        <%
                                    }
                                }
                            }
                        %> 
                    </div>

                </div>
        </section>
        <!-- CONTACT -->
        <section class="contact"></section>

        <!-- FOOTER -->
        <footer class="mt-5">
            <div class="container">
                <div class="row section mb-3">
                    <div class="col-12 col-sm-3">
                        <h3>VỀ HORD</h3>
                        <ul>
                            <li><a href="#">FAQs</a></li>
                            <li><a href="#">Give us feedback</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-sm-3">
                        <h3>THÔNG TIN</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Find us</a></li>
                            <li><a href="#">Schedule</a></li>
                            <li><a href="#">News</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-sm-3">
                        <h3>ĐIỀU KHOẢN VÀ CHÍNH SÁCH</h3>
                        <ul>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Cookie policy</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-sm-3 footer-contact">
                        <h3>THÔNG TIN LIÊN LẠC</h3>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook-f"></i> Facebook</a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                            <li><a href="#"><i class="fab fa-google-plus-g"></i> Google +</a></li>
                        </ul>
                    </div>
                </div>
                <hr>
                <div class="footer__copyright text-center">
                    <p>2022 © công ty TNHH chém gió xuyên quốc gia</p>
                    <p>Địa chỉ: 269 Quang Trung, Thành phố Thủ Đức, TP.HCM</p>
                </div>
            </div>
        </footer>





        <!-- thư viện hỗ trợ -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
        <!-- Jquery Waypoint -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
        <!-- BS4 JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
        <!-- BS4 carousels -->
        <script>
            $('.carousel').carousel({
                interval: 3000
            });
        </script>
        <!-- owl carousels -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script>
            $('.owl-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: false,
                responsive: {
                    0: {
                        items: 1
                    },
                    576: {
                        items: 2
                    },
                    1200: {
                        items: 4
                    }
                }
            });
        </script>
    </body>

</html>