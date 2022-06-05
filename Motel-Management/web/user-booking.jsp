

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
                    <li class="breadcrumb-item"><a href="#" class="text-decoration-none">Motel list</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Booking room</li>
                </ol>
            </nav>
        </div>
        <hr>
    </header>


    <section class="booking">
        <div class="container">
            <div class="booking__title">
                <h3 class="heading">Đặt phòng</h3>
            </div>
            <div class="booking__table">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Tên nhà nghỉ</th>
                            <th scope="col">Loại nhà nghỉ</th>
                            <th scope="col">Số lượng phòng</th>
                            <th scope="col">Giá cả (...VNĐ/h)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="3">Việt Motel</td>
                            <td>Phòng đơn</td>
                            <td>
                                <select class="custom-select" id="inputGroupSelect01">
                                    <option selected>Chọn số lượng</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="3">4</option>
                                    <option value="3">5</option>
                                </select>
                            </td>
                            <td>75.000VNĐ/h</td>
                        </tr>
                        <tr>
                            <td>Phòng đôi</td>
                            <td>
                                <select class="custom-select" id="inputGroupSelect01">
                                    <option selected>Chọn số lượng</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="3">4</option>
                                    <option value="3">5</option>
                                </select>
                            </td>
                            <td>150.000VNĐ/h</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
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