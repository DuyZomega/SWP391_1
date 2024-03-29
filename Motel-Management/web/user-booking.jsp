

<%@page import="sample.room.RoomTypeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room List</title>
        <link rel="shortcut icon" href="./assets/img/logo2.png">
        <!-- BS4 CSS -->
        <link rel="stylesheet" href="vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
        <!-- FONT -->
        <link
            href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap"
            rel="stylesheet">
        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css">

        <!-- main CSS -->
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/js/node_modules/sweetalert2/dist/sweetalert2.css">
    </head>

    <body>
        <!-- HEADER -->
        <%@include file="header.jsp" %>
        <div class="header__breadcrumb container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="ShowMotelController"
                                                   class="text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item"><a href="ShowAllMotelController"
                                                   class="text-decoration-none">Danh sách motel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Đặt phòng</li>
                </ol>
            </nav>
        </div>
        <hr>
    </header>

    <!-- CONTENT -->
    <section class="confirm-booking mb-5">
        <div class="container">
            <form class="row" action="MainController" method="post">
                <div class="col-5">
                    <div class="infor-booking">
                        <h3 class="heading"><i class="fa fa-money-check-alt"></i> Chi tiết đặt phòng của bạn</h3>
                        <div class="box">
                            <c:forEach var="o" varStatus="counter"
                                       items="${requestScope.DETAIL_MOTEL}">
                                <%                                    double total = 0;
                                    double sum = 0;
                                %>
                                <p class="d-flex"><i class="fa fa-hand-point-right"></i> <label><span class="label">Tên nhà
                                            nghỉ:</span> <span><input type="hidden" name="name" value="${o.name}" />${o.name}</span></label>
                                </p>

                                <input type="hidden"  class="d-5"  name="motelID" value="${o.motelID}" />

                                <p class="d-flex"><i class="fa fa-hand-point-right"></i> <label><span class="label">Địa
                                            chỉ:</span><input type="hidden" name="address" value="${o.address},${o.district},${o.city}" /> ${o.address},${o.district},${o.city}
                                    </label></p>
                                    <input type="hidden" name="ownerID" value="${o.ownerId}" />
                                <div class="d-flex">
                                    <p><i class="fa fa-hand-point-right"></i><span class="label">Đơn giá:</span></p>
                                </div>
                                <ul class="ml-3">

                                    <c:forEach var="t" items ="${requestScope.listTest}">
                                        <li> - ${t.typeName}- Số giờ : ${t.time}- Số lượng phòng ${t.countRoom} - Giá <span class="price-format" data-price="${t.price}"></span> 
                                        </li>
                                        <input type="hidden" class="roomTypeID d-5"  name="roomTypeID[]" value="${t.roomTypeID}"/>
                                        <input type="hidden" class="typename"  name="typename[]" value="${t.typeName}"/>
                                        <input  type="hidden" class="hour_val" value="${t.time}" name="counttime[]">
                                        <input  type="hidden" value="${t.countRoom}" name="countroom[]">
                                        <input type="hidden" class="price" value="${t.price}" name="price[]" />
                                    </c:forEach>
                                    <hr>
                                    <input type="hidden" class="price" value="${requestScope.total}" name="total" />
                                    <li><h6>- Tổng tiền: <span class="price-format" data-price="${requestScope.total}"></span> VNĐ</h6></li>
                                </ul>
                                <%
                                    total += sum;
                                %>  
                            </c:forEach>
                        </div>
                    </div>
                    <hr>
                    <div class="infor-owner">

                        <h3 class="heading"><i class="fas fa-id-card-alt"></i> Chủ nhà nghỉ</h3>
                        <c:forEach var="i" varStatus="counter"
                                   items="${requestScope.DETAIL_MOTEL}">
                            <div class="box d-flex">
                                <span><img src="images/man.png"   style="width: 100px; min-height: 100px" alt="profile"></span>
                                <span class="infor-owner-detail">
                                    <p class="m-0"><span class="label">Họ tên:</span> ${i.ownerName}</p>
                                    <p class="m-0"><span class="label">SĐT:</span> ${i.phone}</p>
                                    <p class="m-0"><span class="label">Địa chỉ:</span> ${i.address},${i.district},${i.city}
                                    </p>
                                </span>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-7">
                    <h3 class="heading"><i class="fa fa-address-card"></i> Xác nhận thông tin</h3>
                    <div class="warning">
                        <span><i class="fas fa-exclamation-circle"></i> Yêu cầu nhập thông tin chính
                            xác, trung thực</span>
                    </div>
                    <div class="form row">
                        <div class="form-item col-12">
                            <label for="sender">Họ và Tên</label>
                            <input type="text" name="sender" id="sender" required=""/>
                            <span id="error_message" class="helper-text text-danger"></span>
                        </div>

                        <div class="form-item col-12">
                            <label for="password">Phương thức thanh toán</label>
                            <select class="custom-select" name="status" id="inputGroupSelect01">
                                <option value="0" selected>Tiền mặt</option>
                                <option value="2">Chuyển khoản</option>
                            </select>
                        </div>
                        <div class="form-item col-12">
                            <label for="requestMore"><img src="assets/img/bell-concierge-solid.svg" alt="bell"> Yêu cầu
                                thêm</label>
                            <p class="request-note">- Yêu cầu của quý khách sẽ được thực hiện phụ thuộc vào đối tác -
                            </p>
                            <textarea id="requestMore" name="desct" id="" cols="30" rows="10"
                                      placeholder="VD: Tôi cần đồ dịch vụ massage khi đến nhận phòng,... (Không bắt buộc)"></textarea>
                        </div>
                        <div class="form-checkbox col-12">
                            <input type="checkbox" aria-label="Điều khoản và chính sách" required>
                            <span>Tôi đồng ý <a target="_blank" href="rules.jsp">Điều khoản và chính sách</a></span>
                        </div>
                        <button type="submit" value="book" name="action" class="button--primary btn btn-danger">Xác nhận
                            đặt
                            phòng</button>


                    </div>
                </div>
            </form>            
        </div>
    </section>
    <!-- FOOTER -->
    <%@include file="footer.jsp" %>

    <!-- thư viện hỗ trợ -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    referrerpolicy="no-referrer"></script>
    <!-- Jquery Waypoint -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <!-- BS4 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.5/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- main js -->
    <script src="assets/js/user-script.js"></script><script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

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
    
    <script>
            Validator({
                form: '#form-3',
                errorSelector: '#error_message',
                rules: [
                    Validator.isNotEmpty('#fullName'),
                    Validator.isTextOnly('#fullName', 'Vui lòng nhập đúng cú pháp'),
                    Validator.isNotEmpty('#email'),
                    Validator.isEmail('#email', 'Vui lòng nhập đúng cú pháp'),
                    Validator.isNotEmpty('#telephone'),
                    Validator.isNumberOnly('#telephone', 'Vui lòng nhập đúng cú pháp'),
                ]
            });
    </script>

</body>
