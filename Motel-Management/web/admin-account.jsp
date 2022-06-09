<%-- 
    Document   : admin-account
    Created on : Jun 6, 2022, 11:33:43 PM
    Author     : cao thi phuong thuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin account</title>
        <link rel="shortcut icon" href="assets/img/logo2.png">
        <!-- CSS -->
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!--Boxicons-->
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <!-- Data-Table -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="assets/css/owner-style.css">

        <link rel="stylesheet" href="assets/css/admin.css">
    </head>
    <body>

        <!-- sidebar -->
        <div class="sidebar">
            <div class="container">
                <div class="navigation">

                    <ul>
                        <div class="logo">
                            <a href="admin.jsp">
                                <img class="logo" src="assets/img/logo2.png" alt="logo">
                            </a>
                        </div>
                        <li>
                            <a href="admin.jsp">
                                <span><i class='bx bx-tachometer'></i></span>
                                <span class="title">Tổng quan</span>
                            </a>
                        </li><!-- comment -->
                        <li class="active" >
                            <a href="AdminListAccount">
                                <span><i class='bx bx-home'></i></span>
                                <span class="title">Quản lý Tài Khoản</span>
                            </a>
                        </li>
                        <li>
                            <a href="AdminShowMotel">
                                <span><i class='bx bx-home'></i></span>
                                <span class="title">Quản lý Motel</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin-user.jsp">
                                <span><i class='bx bxs-user-rectangle'></i></span>
                                <span class="title">Quản lý người thuê</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin-owner.jsp">
                                <span><i class='bx bx-user-circle'></i></span>
                                <span class="title">Quản lý chủ thuê</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin-report.jsp">
                                <span><i class='bx bx-bell'></i></span>
                                <span class="title">Report</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span><i class='bx bx-user'></i></span>
                                <span class="title">Tài khoản</span>
                            </a>
                        </li>

                    </ul>
                </div>


            </div>
        </div>
        <!-- End sidebar -->

        <!-- Header -->
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 my-2">
                        <div class="toggle float-left">
                            <i class='bx bx-menu'></i>
                        </div>
                        <div class="float-left">
                            <div class="dashboard_bar d-flex">
                                Quản lý phòng trọ
                            </div>
                        </div>
                        <div class="float-right">
                            <div class="dropdown">
                                <div class="dropdown dib">
                                    <div class="header-icon admin" data-toggle="dropdown">
                                        <span class="user-avatar"> 
                                            <img src="assets/img/avatar.jpg">
                                            Thuy CTP ${sessionScope.LOGIN_USER.fullName}
                                            <i class='bx bx-chevron-down'></i>
                                        </span>

                                        <ul class="dropdown-menu dropdown-menu-default ">
                                            <li class="hidden">
                                                <a href="admin/profile/info" title="Thông tin tài khoản" class="">
                                                    <i class="icon-user"></i> Thông tin tài khoản </a>
                                            </li>
                                            <li>
                                                <a href="admin/profile/changepassword" title="Đổi mật khẩu" class="">
                                                    <i class="icon-lock"></i> Đổi mật khẩu </a>
                                            </li>
                                            <li>
                                                <a href="admin/verify/logout">
                                                    <i class="icon-logout"></i> Đăng xuất </a>
                                            </li>
                                        </ul>

                                    </div>

                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
        <!-- End header -->

        <div class="main-content">
            <div class="main">
                <div class="container-fluid">
                    <section>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table id="myTable" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Hinh anh</th>
                                                        <th>Họ tên</th>
                                                        <th>CMND</th>
                                                        <th>SDT</th>
                                                        <th>Gmail</th>
                                                        <th>Địa chỉ</th>
                                                        <th>Role</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <c:if test="${requestScope.LIST_ACC != null}">
                                                        <c:if test="${not empty requestScope.LIST_ACC}">
                                                            <c:forEach var="a" varStatus="counter" items="${requestScope.LIST_ACC}">
                                                            <form action="MainController">
                                                                <tr>
                                                                    <td>${a.userId}</td>
                                                                    <td>
                                                                        <img src="${a.image}">
                                                                    </td>
                                                                    <td>${a.fullName}</td>
                                                                    <td>${a.citizenNumber}</td>
                                                                    <td>${a.phone}</td>
                                                                    <td>${a.gmail}</td>
                                                                    <td>${a.address}</td>
                                                                    <td><span class="role fs-16 font-w500 text-end d-block">
                                                                        <c:if test="${a.role.equals('US')}">
                                                                            Người thuê
                                                                        </c:if> 
                                                                        <c:if test="${a.role.equals('OW')}">
                                                                            Chủ thuê
                                                                        </c:if> 
                                                                            <c:if test="${a.role.equals('AD')}">
                                                                            Admin
                                                                        </c:if> 
                                                                        </span></td>
                                                                    <td>
                                                                        <c:if test="${a.status == 0}">
                                                                            <span class="badge badge-danger">Extended</span>
                                                                        </c:if> 
                                                                        <c:if test="${a.status == 1}">
                                                                            <span class="badge badge-success">Activity</span>
                                                                        </c:if> 
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex">
                                                                            <a href="#" class="btn btn-success shadow btn-xs sharp me-1"><i class='bx bxs-pencil'></i></a>
                                                                            <a href="#" class="btn btn-danger shadow btn-xs sharp"><i class='bx bxs-trash-alt' ></i></a>
                                                                        </div>    
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </c:if>
                                                    </c:if>
                                                </form>
                                                </tbody>
                                            </table>
                                            ${requestScope.ERROR_MESSAGE}
                                        </div>
                                    </div>
                                </div>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/admin.js"></script>
    </body>
</html>