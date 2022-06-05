

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Detail</title>
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
        <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>

    <!-- Fotorama from CDNJS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">

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
                </ul>
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
        <hr>
        <div class="header__breadcrumb container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" class="text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Room Detail</li>
                </ol>
            </nav>
        </div>
        <hr>
    </header>

    <!-- CONTENT -->
    <section class="content spacing">
        <div class="container py-4">
            <div class="row">
                <div class="col-12 content__title d-flex justify-content-between align-items-center">
                    <div class="content__title-left">
                        <h3 class="heading">Căn hộ Super Premium, TP.Thủ Đức</h3>
                        <p>0 Phó Đức Chính, Phường Linh Trung, TP.Thủ Đức, Thành phố Hồ Chí Minh</p>
                    </div>
                </div>
                <div class="col-9">
                    <!-- item -->
                    <div class="content__item">
                        <div class="fotorama" data-nav="thumbs">
                            <a href="https://s.fotorama.io/1.jpg"><img src="https://s.fotorama.io/1.jpg" width="144"
                                    height="96"></a>
                            <a href="https://s.fotorama.io/2.jpg"><img src="https://s.fotorama.io/2.jpg" width="144"
                                    height="96"></a>
                        </div>
                        <div class="item-price">
                            <p>3 triệu</p>
                        </div>
                    </div>
                    <hr>
                    <div class="content__describe">
                        <h3 class="heading">Mô tả</h3>
                        <p>Không có mô tả nào</p>
                    </div>
                    <hr>
                    <div class="content__describe">
                        <h3 class="heading">Tiện ích</h3>
                        <p>Chưa thiết lập cơ sở vật chất cho nhà.</p>
                    </div>
                    <hr>
                    <div class="content__feedback container-fluid">
                        <div class="row">
                            <h3 class="col-12 p-0 heading">Đánh giá</h3>
                            <div class="box-name col-6 p-0">
                                <textarea name="#" id="" cols="1" rows="1" placeholder="Tên của bạn là?"></textarea>
                            </div>
                            <div class="box-rate col-6">
                                <label for="">Đánh giá</label>
                                <div class="stars">
                                    <form action="">
                                      <input class="star star-5" id="star-5" type="radio" name="star"/>
                                      <label class="star star-5" for="star-5"></label>
                                      <input class="star star-4" id="star-4" type="radio" name="star"/>
                                      <label class="star star-4" for="star-4"></label>
                                      <input class="star star-3" id="star-3" type="radio" name="star"/>
                                      <label class="star star-3" for="star-3"></label>
                                      <input class="star star-2" id="star-2" type="radio" name="star"/>
                                      <label class="star star-2" for="star-2"></label>
                                      <input class="star star-1" id="star-1" type="radio" name="star"/>
                                      <label class="star star-1" for="star-1"></label>
                                    </form>
                                  </div>
                            </div>
                            <div class="box-comment col-12 p-0">
                                <textarea name="#" id="" cols="30" rows="10" placeholder="Hãy nói lên cảm nghĩ của bạn..."></textarea>
                            </div>
                            <div class="box-send col-12 text-center">
                                <button class="button--primary btn">Gửi đi <i class="fa fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="widgets"></div>
                    <div class="content__item">
                        <div class="content-booking text-center border rounded p-3 mb-2">
                            <h2>Đặt lịch</h2>
                            <hr>
                            <div class="content-booking-detail">
                                <p>Vui lòng đăng nhập để đặt lịch</p>
                                <button class="button--primary">Đăng nhập</button>
                                <p>hoặc</p>
                                <button class="button--primary">Đăng ký</button>
                            </div>
                        </div>
                        <div class="content-contact text-center border rounded p-3">
                            <h2>Liên hệ</h2>
                            <hr>
                            <div class="content-booking-detail">
                                <span><img src="https://hfr.vn/Images/poster.png" alt="profile"></span>
                                <span>
                                    <p class="m-0">Nguyễn Tuân</p>
                                    <p class="m-0">Tele: 0865.644.162</p>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </section>

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
    <!-- BS4 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
    <!-- Fotorama from CDNJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
</body>