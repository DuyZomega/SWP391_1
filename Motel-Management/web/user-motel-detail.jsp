<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.room.RoomDTO"%>
<%@page import="sample.users.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sample.motel.MotelDTO"%>
<%@page import="sample.room.RoomDTO"%>
<%@page import="sample.service.ServiceDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thông tin chi tiết phòng</title>
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

        <!-- owl carousels -->
        <link rel="stylesheet" href="./assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css">

        <!-- lightbox -->
        <link rel="stylesheet" href="vendor/bootstrap-4.5.3-dist/css/lightbox.min.css">

        <!-- main CSS -->
        <link rel="stylesheet" href="./assets/css/main.css">
    </head>

    <body>
        <!-- HEADER -->

        <%@include file="header.jsp" %> 

        <!-- CONTENT -->
        <section class="content">
            <div class="container pt-4">
                <div class="row">

                    <c:forEach var="o" varStatus="counter" items="${requestScope.DETAIL_MOTEL}">
                        <div class="col-12 content__title d-flex justify-content-between align-items-center">
                            <div class="content__title-left">
                                <h3 class="heading">${o.name}  <span>${o.rating}</span></h3> 
                                <p>${o.address},${o.district},${o.city}</p>
                            </div>
                        </div>
                        <div class="col-9">
                            <!-- item -->
                            <div class="content__item">
                                <a href="${o.image}" data-lightbox="image-1" data-title="${o.name}" style="width: 100%; height: auto"><img
                                        src="${o.image}" class="img-fluid" alt="${o.name}"></a>
                            </div>
                            <hr>
                            <div class="content__describe">
                                <h3 class="heading">Mô tả chi tiết</h3>
                                <p>${o.desct}</p>
                            </div>
                            <hr>
                            <div class="content__describe">
                                <h3 class="heading">Tiện ích</h3>
                                <p>7up, lavie, bánh, Coca, khăn ướt</p>
                            </div>
                        </div>
                        <div class="col-3 widgets">
                            <div class="content__item">
                                <div class="content-booking text-center border rounded p-3 mb-2">
                                    <h2>Đặt lịch</h2>
                                    <hr>
                                    <div class="content-booking-detail">
                                        <% if (loginUser == null || !loginUser.getRole().equals("US")) { %>
                                        <p>Vui lòng đăng nhập để đặt lịch</p>
                                        <button class="button--primary" href="./login.jsp">Đăng nhập</button>
                                        <p>hoặc</p>
                                        <button class="button--primary" href="./signup.jsp">Đăng ký</button>
                                        <% } else { %>
                                        <div class="content-booking-1 text-center border rounded p-3 mb-2">
                                            <h2>Đặt lịch</h2>
                                            <hr>
                                            <div class="content-booking-detail">
                                                <p>Thủ tục đặt phòng đơn giản, nhanh gọn</p>
                                                <button class="button--primary mt-3"><a href="#Booking"
                                                                                        class="text-white text-decoration-none">Đặt phòng</a></button>
                                            </div>
                                        </div>
                                        <%}%>
                                    </div>
                                </div>
                                <!-- Sau khi đăng nhập -->
                                <div class="content-contact text-center border rounded p-3">
                                    <h2>Liên hệ</h2>
                                    <hr>
                                    <div class="content-booking-detail">
                                        <span><img src="images/man.png" alt="profile" style="width: 100px"></span>
                                        <span>
                                            <p class="m-0">${o.ownerName}</p>
                                            <p class="m-0">Tele: ${o.phone}</p>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <hr>
            </div>
        </section>

        <section id="Booking" class="booking mb-5">
            <div class="container">
                <div class="booking__title">
                    <h3 class="heading">Đặt phòng</h3>
                </div>
                <div class="booking__table">
                    <table class="table table-book">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col" class="room-type">Loại phòng nghỉ</th>
                                <th class="room-number" scope="col">Số phòng</th>
                                <th class="hour" scope="col">Số giờ</th>
                                <th scope="col" class="price">Giá cả (...VNĐ/h)</th>
                                <th scope="col" class="total-price">Tổng giá</th>
                                <th scope="col" class="total-price-1">Tổng tất cả</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="PhongDon">
                                <td>
                                    <div class="row">
                                        <c:forEach var="r" varStatus="counter" items="${requestScope.LIST_ROOM2}">
                                            <div class="title col-12 d-flex justify-content-between align-items-center">
                                                <h5 class="room-type-title"></h5>
                                                <div>
                                                    <span class="empty-room">
                                                        <i class="fa fa-quote-left"></i>
                                                        Còn 5 phòng trống!!!
                                                        <i class="fa fa-quote-right"></i>
                                                    </span>
                                                    <img src="assets/img/HOT.svg" class="hot-label" alt="hot-label">
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="img-room">
                                                    <a href="assets/img/image.jpg" data-lightbox="roadtrip"><img
                                                            src="${r.image}" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="desc col-6">
                                                <ul>
                                                    <li>${r.desct}</li>
                                                </ul>
                                            </div>
                                            <h6 class="col-12">Dịch vụ</h6>
                                            <div class="col-12">
                                                <p>Wifi miễn phí, Tủ quần áo, Giá treo đồ, Tủ trang điểm, Khăn tắm, khăn trải
                                                    giường, Dép, Giấy vệ sinh, Truyền hình cáp, Dịch vụ ăn uống.
                                                </p>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </td>
                                <td>
                                    <select class="custom-select" id="inputGroupSelect01">
                                        <option selected value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="3">4</option>
                                        <option value="3">5</option>
                                    </select>
                                </td>
                                <td>
                                    <div class="inputHour">
                                        <input type="number" value="1">
                                    </div>
                                </td>    
                                <c:forEach var="r" varStatus="counter" items="${requestScope.LIST_ROOM2}">
                                    <td>${r.price}/h</td>
                                    <td>${r.price}</td>
                                </c:forEach>
                            </tr>
                        </tbody>
                    </table>
                    <div class="box-booking">
                        <!-- trước khi đăng nhập -->
                        <% if (loginUser == null || !loginUser.getRole().equals("US")) { %>
                        <div class="btn-booking-before d-flex justify-content-center align-items-center">
                            <button class="button--primary mr-3" type="submit"><a href="login.html"
                                                                                  class="text-decoration-none text-white">Đăng nhập</a></button>
                            <span>hoặc</span>
                            <button class="button--primary ml-3" type="submit"><a href="signup.html"
                                                                                  class=" text-decoration-none text-white">Đăng ký</a></button>
                        </div>
                        <!-- sau khi đăng nhập -->
                        <% } else { %>
                        <div class="btn-booking text-center">
                            <button class="button--primary" type="submit">Đặt ngay</button>
                        </div>
                        <%}%>
                    </div>
                </div>

            </div>
        </section>

        <section class="content pt-3">
            <div class="content__feedback container">
                <hr>
                <div class="row">
                    <h3 class="col-12 p-0 heading">Đánh giá </h3>
                    <div  class="rating-carousel owl-carousel owl-theme">
                        <c:forEach var="f" varStatus="counter" items="${requestScope.DETAIL_FEEDBACK}">
                            <div class="item item-rating">

                                <div class="customer-rating">
                                    <h6 class="name-customer">
                                        ${f.userName}</h6>
                                    <img src="${f.image}" alt="${f.userName}">
                                </div>
                                <div class="cmt-box">
                                    <label class="rate-customer"> ${f.rating}
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </label>
                                    <p class="cmt-customer">
                                        ${f.desc}
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!-- FOOTER -->

        <%@include file="footer.jsp" %> 

        <!-- thư viện hỗ trợ -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
        <!-- BS4 JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
        <!-- owl Carousels -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script>
            $('.rating-carousel').owlCarousel({
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
                        items: 3
                    }
                }
            });
        </script>
        <!-- lightbox -->
        <script src="vendor/lightbox/js/lightbox.min.js"></script>
        <script src="assets/js/user-script.js"></script>

    </body>