<%@page import="sample.room.RoomTypeDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.room.RoomDTO" %>
<%@page import="sample.users.UserDTO" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="sample.motel.MotelDTO" %>
<%@page import="sample.room.RoomDTO" %>
<%@page import="sample.service.ServiceDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thông tin chi tiết phòng</title>
        <link rel="shortcut icon" href="assets/img/logo2.png">
        <!-- BS4 CSS -->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!-- FONT -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap"
            rel="stylesheet">
        <!-- FONT AWESOME -->
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
        <link rel='stylesheet prefetch'
              href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>
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
        <hr>
        <div class="header__breadcrumb container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="ShowMotelController"
                                                   class="text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item"><a href="ShowAllMotelController"
                                                   class="text-decoration-none">Danh sách motel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Thông tin
                        phòng</li>
                </ol>
            </nav>
        </div>
        <hr>
        <!-- CONTENT -->
        <form id="myform" name="myform" method="post" action="MainController">
            <section class="content">
                <div class="container pt-4">
                    <div class="row">

                        <c:forEach var="o" varStatus="counter"
                                   items="${requestScope.DETAIL_MOTEL}">
                            <div
                                class="col-12 content__title d-flex justify-content-between align-items-center">
                                <div class="content__title-left">
                                    <h3 class="headingd-inline-block pr-3"><i class="fa fa-hotel"> </i> ${o.name}
                                        <span>${o.rating} <i class="fa fa-star" style="color: yellow"></i></span></h3>
                                    <p>${o.address},${o.district},${o.city}</p>
                                </div>
                            </div>
                            <div class="col-9">
                                <!-- item -->
                                <div class="content__item">
                                    <a href="${o.image}" data-lightbox="image-1"
                                       data-title="${o.name}"
                                       style="width: 100%; height: auto"><img
                                            src="${o.image}" class="img-fluid"
                                            alt="${o.name}"></a>
                                </div>
                                <hr>
                                <div class="content__describe">
                                    <h3 class="heading"><i class="fa fa-scroll"> </i> Mô tả chi tiết</h3>
                                    <p>${o.desct}</p>
                                </div>
                            </div>
                            <div class="col-3 widgets">
                                <div class="content__item">
                                    <div
                                        class="content-booking text-center border rounded p-3 mb-2">
                                        <h2>Đặt lịch</h2>
                                        <hr>
                                        <div class="content-booking-detail">

                                            <p>Thủ tục đặt phòng đơn giản, nhanh
                                                gọn</p>
                                            <a href="#Booking" class="button--primary mt-4 text-white text-decoration-none">Đặt phòng</a>
                                        </div>
                                    </div>


                                    <!-- Sau khi đăng nhập -->
                                    <div
                                        class="content-contact text-center border rounded p-3">
                                        <h2>Liên hệ</h2>
                                        <hr>
                                        <div class="content-booking-detail">
                                            <span><img src="${o.service}"
                                                       alt="profile"
                                                       style="width: 100px; min-height: 100px"></span>
                                            <span>
                                                <p class="m-0"> ${o.ownerName}</p>
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
                        <h3 class="heading"><i class="fa fa-concierge-bell"> </i> Đặt phòng</h3>
                    </div>
                    <div class="booking__table row">
                        <table class="table table-book col-10" id="app_a">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col" class="room-type">Loại phòng nghỉ
                                    </th>
                                    <th class="room-number" scope="col">Số phòng</th>
                                    <th class="hour" scope="col">Số giờ</th>
                                    <th scope="col" class="price">Giá cả (...VNĐ/h)</th>
                                    <th scope="col" class="total-price">Tổng giá</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                                    List<RoomTypeDTO> rt = (ArrayList<RoomTypeDTO>) request.getAttribute("LIST_ROOMTYPE");
                                    double total = 0;
                                    double sum = 0;
                                    int i = 0;
                                    if (rt.size() > 0) {
                                        for (RoomTypeDTO roomtype : rt) {
                                %><tr>
                                    <td>
                                        <div class="row">
                                            <div class="title col-12 d-flex justify-content-start align-items-center">
                                                <!--<a href="MainController?action=ShowMotelBooking&motelID=842578129&rt=<%=request.getParameterValues("rt")%>">Đặt ngay</a>-->
                                                <input type="hidden" class="roomTypeID d-5"  name="roomTypeID[]" value="<%= roomtype.getRoomTypeID()%>"/>
                                                <input type="hidden" class="typename"  name="typename[]" value="<%= roomtype.getTypeName()%>"/> 
                                                <input type="hidden" class="motelID"  name="motelID" value="<%= roomtype.getMotelID()%>"/> 
                                                <h6 class="room-type-title"><%= roomtype.getTypeName()%></h6>
                                                <div>
                                                    <span class="empty-room">
                                                        <i class="fa fa-quote-left"></i>
                                                        Còn  <%= roomtype.getCountRoom()%> phòng!!!
                                                        <i class="fa fa-quote-right"></i>
                                                    </span>
                                                    <img src="assets/img/HOT.svg" style="width: 35px; height: auto"
                                                         class="hot-label"
                                                         alt="hot-label">
                                                </div>

                                            </div>
                                            <div class="col-12">
                                                <div class="img-room">
                                                    <a href="<%= roomtype.getImage()%>"
                                                       data-lightbox="roadtrip"><img
                                                            src="<%= roomtype.getImage()%>"
                                                            alt="<%= roomtype.getTypeName()%>"></a>
                                                </div>
                                            </div>

                                            <div class="col-12 truncate-content"> <h6>Thông tin</h6>
                                                <div>
                                                    <p><%= roomtype.getDesct()%></p>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="inputHour" name="countroom">
                                            <input class="room_val" type="number" min="0"  max="<%= roomtype.getCountRoom()%>" value="0" name="countroom[]">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="inputHour" name="counttime">
                                            <input type="number" class="hour_val" min="0" value="1" name="counttime[]">
                                        </div>
                                    </td>
                                    <td><input type="hidden" class="price" value="<%= roomtype.getPrice()%>" name="price[]" /><span class="price-format" data-price="<%= roomtype.getPrice()%>"></span> / h</td>
                                    <td><span class="row_total" name ="sum" value ="<%=sum%>" ><%=sum%></span></td>
                                </tr>

                                <%
                                            i++;
                                        }
                                    }
                                    total += sum;
                                %>  

                            </tbody>
                        </table>
                        <div class="total-price-box col-2">
                            <table class="table table-book">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col" class="room-type">Tổng tất cả
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <!-- Tổng tất cả -->
                                        <td rowspan="2" class="align-middle">
                                            <span><span class="amount" >
                                                    <input type="hidden" class="total" name="total" value="<%=total%>"/>
                                                    <%=total%></span> VND</span>
                                            <p>- Giao dịch đơn giản, an toàn</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="box-booking col-12">
                            <!-- trước khi đăng nhập -->
                            <% if (loginUser == null) { %>
                            <div
                                class="btn-booking-before d-flex justify-content-center align-items-center">
                                <button class="button--primary mr-3"
                                        type="submit"><a href="login.jsp"
                                                 class="text-decoration-none text-white">Đăng
                                        nhập</a></button>
                                <span>hoặc</span>
                                <button class="button--primary ml-3"
                                        type="submit"><a href="signup.jsp"
                                                 class=" text-decoration-none text-white">Đăng
                                        ký</a></button>
                            </div>
                            <!-- sau khi đăng nhập -->
                            <% } else if (loginUser.getRole().equals("OW")) { %>
                            <div class="btn-booking text-center">
                                <p style="color: red">Không thể đặt phòng bằng role chủ nhà</p>
                            </div>
                            <%
                                }else{%>
                            <div class="btn-booking text-center">
                                <button class="button--primary" type = "submit" name="action" value = "ShowMotelBooking">Đặt ngay</button>
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
                        <h3 class="col-12 p-0 heading pb-3"><i class="fa fa-thumbs-up"></i> Đánh giá </h3>
                        <div class="rating-carousel owl-carousel owl-theme">

                            <c:if test="${requestScope.DETAIL_FEEDBACK != null}">
                                <c:if test="${not empty requestScope.DETAIL_FEEDBACK}">
                                    <c:forEach var="f" varStatus="counter"
                                               items="${requestScope.DETAIL_FEEDBACK}">
                                        <div class="item item-rating">

                                            <div class="customer-rating">
                                                <h6 class="name-customer">
                                                    ${f.userName}</h6>
                                                <img src="${f.image}"
                                                     alt="${f.userName}">
                                            </div>
                                            <div class="cmt-box">
                                                <label class="rate-customer">
                                                    ${f.rating}
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
                                </c:if>
                            </c:if>
                        </div>


                        <c:if test="${requestScope.MESSAGE_FEEDBACK != null}">
                            <c:if test="${not empty requestScope.MESSAGE_FEEDBACK}">
                                <div class="reviews-title alert-info col-12">
                                    ${requestScope.MESSAGE_FEEDBACK}
                                </div>
                            </c:if>
                        </c:if>
                    </div>
                </div>
            </section>
        </form>
        <!-- FOOTER -->

        <%@include file="footer.jsp" %>

        <!-- thư viện hỗ trợ -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
        <!-- BS4 JS -->
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
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

// ===================Thuy detail=====================
        </script>
        <!-- lightbox -->
        <script src="vendor/lightbox/js/lightbox.min.js"></script>
        <script src="assets/js/user-script.js"></script>

    </body>