<%-- 
    Document   : user-booking-list
    Created on : Jun 15, 2022, 1:41:35 PM
    Author     : cao thi phuong thuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="sample.owner.HistoryDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi tiết lịch sử</title>
        <link rel="shortcut icon" href="assets/img/logo2.png">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!--Boxicons-->
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
        <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>
        <!-- Data-Table -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/main.css">


    </head>
    <body>
        <%@include file="header.jsp" %> 
        <hr>
        <div class="header__breadcrumb container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" class="text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Thông tin tài khoản</li>

                </ol>
            </nav>
        </div>
        <hr>


        <%            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>

        <!-- End header -->


        <div class="profile container">
            <div class="row">


                <c:if test="${requestScope.MESSAGE != null}">
                    <c:if test="${not empty requestScope.MESSAGE}">
                        <div class="alert hide">
                            <span class="fas fa-exclamation-circle"></span>
                            <span class="msg">${requestScope.MESSAGE}!</span>
                            <div class="close-btn">
                                <span class="fas fa-times"></span>
                            </div>
                        </div>
                    </c:if>
                </c:if>
                <div class="navigation col-2">
                    <ul class="slide-menu">
                        <li>
                            <a href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                                <span><i class='bx bx-user'></i></span>
                                <span class="title">Tài khoản</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="userhistorybooking">
                                <span><i class='bx bx-history'></i></span>
                                <span class="title">Lịch sử thuê phòng</span>
                            </a>
                        </li>
                    </ul>
                </div>

                
            <div class="main-content col-10">
                <div class="main">
                    <div class="container-fluid">
                        <section>
                            <div class="row">
                                <div class="col-lg-12">
                                    <section class="confirm-booking mb-5 pt-2">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-7 pr-0">
                                                    <div class="infor-booking">
                                                        <h3 class="heading"><i class="fa fa-money-check-alt"></i>
                                                            Chi tiết đặt phòng
                                                            của bạn</h3>
                                                        <div class="box">
                                                            <p class="d-flex"><i class="fa fa-hand-point-right"></i>
                                                                <label><span class="label">Tên Motel: </span>
                                                                    <span>Nhà Trọ Ladalat</span></label>
                                                            </p>
                                                            <p class="d-flex"><i class="fa fa-hand-point-right"></i>
                                                                <label><span class="label">Địa chỉ:</span>
                                                                    <span>Thủ Đức</span></label>
                                                            </p>
                                                            <div class="d-flex">
                                                                <p><i class="fa fa-hand-point-right"></i><span
                                                                        class="label">Đơn giá:</span>
                                                                </p>
                                                            </div>
                                                            <ul class="ml-3">
                                                                <li>- Phòng đơn:
                                                                    <span>1</span> phòng <i
                                                                        class="fa fa-arrow-right"></i>
                                                                    <span>150.000</span> VNĐ
                                                                </li>
                                                                <li>- Phòng đơn:
                                                                    <span>1</span> phòng <i
                                                                        class="fa fa-arrow-right"></i>
                                                                    <span>150.000</span> VNĐ
                                                                </li>
                                                                <hr>
                                                                <li>- Tổng tiền:
                                                                    <span><span class="price-format"
                                                                            data-price="100900"></span></span> VNĐ
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-5">
                                                    <h3 class="heading"><i class="fa fa-address-card"></i>
                                                        Xác nhận thông tin
                                                    </h3>
                                                    <div class="box">
                                                        <div class="form-item py-2">
                                                            <label class="font-weight-bold">Họ và Tên:
                                                            </label>
                                                            <span id="fullName">
                                                                Tran Ngoc
                                                                Hai
                                                            </span>
                                                        </div>
                                                        <div class="form-item py-2"> <label
                                                                class="font-weight-bold">Phương thức thanh toán:
                                                            </label>


                                                        </div>
                                                    </div>
                                                    <div class="infor-owner">
                                                        <h3 class="heading"><i class="fas fa-id-card-alt"></i>
                                                            Chủ nhà nghỉ</h3>
                                                        <div class="box d-flex">
                                                            <span><img src="https://hfr.vn/Images/poster.png"
                                                                    alt="profile"></span>
                                                            <span class="infor-owner-detail">
                                                                <p class="m-0">
                                                                    <span class="label">Họ tên:</span>
                                                                    Nguyễn Tuân
                                                                </p>
                                                                <p class="m-0">
                                                                    <span class="label">SĐT:</span>
                                                                    0865.644.162
                                                                </p>
                                                                <p class="m-0">
                                                                    <span class="label">Địa
                                                                        chỉ:</span>
                                                                    Chí Minh
                                                                </p>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            </div>


        </div>


        <%@include file="footer.jsp" %> 
        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <!-- <script src="assets/js/owner-script.js"></script> -->

        <script src="assets/js/user-script.js"></script>
        <script>
            $(document).ready(function () {
                $("#history-table").DataTable({
                    pagingType: "full_numbers",
                });
            });
        </script>
    </body>
</html>
