

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin</title>
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
                        </li>
                        <li class="active" >
                            <a href="admin-motel.jsp">
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
                                            <c:if test="${requestScope.ADMIN_LIST_MOTEL != null}">
                                                <c:if test="${not empty requestScope.ADMIN_LIST_MOTEL}">
                                                    <table id="myTable" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>MotelID</th>
                                                                <th>Hinh anh</th>
                                                                <th>MotelName</th>
                                                                <th>Hotline</th>
                                                                <th>Địa chỉ</th>
                                                                <th>Rating</th>
                                                                <th>Chủ trọ </th>
                                                                <th>Status</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>

                                                        <tbody>
                                                            <c:forEach var="motel" varStatus="counter" items="${requestScope.ADMIN_LIST_MOTEL}">

                                                            <form action="MainController">
                                                                <tr>
                                                                    <td>${motel.motelID}</td>
                                                                    <td>
                                                                        <img src="${motel.image}">
                                                                    </td>
                                                                    <td>${motel.name}</td>
                                                                    <td>${motel.phone}</td>
                                                                    <td>${motel.address}</td>
                                                                    <td>${motel.rating}</td>
                                                                    <td>${motel.ownerId}</td>
                                                                    <td>
                                                                        <span class="badge badge-success">Activity</span>
                                                                    </td>

                                                                    <!--                                                        
                                                                     <td><span class="badge badge-danger">Extended</span></td>-->
                                                                    <td>
                                                                        <div class="d-flex">
                                                                            <a href="#" class="btn btn-success shadow btn-xs sharp me-1"><i class='bx bxs-pencil'></i></a>
                                                                            <a href="#" class="btn btn-danger shadow btn-xs sharp"><i class='bx bxs-trash-alt' ></i></a>
                                                                        </div>    
                                                                    </td>
                                                                </tr>
                                                              

                                                            </c:forEach>
                                                        </form>
                                                        </tbody>
                                                    </table>
                                                </c:if>
                                            </c:if>
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