

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
                            <a href="AdminShowOverview">
                                <img class="logo" src="assets/img/logo2.png" alt="logo">
                            </a>
                        </div>
                        <li >
                            <a href="AdminShowOverview">
                                <span><i class='bx bx-tachometer'></i></span>
                                <span class="title">Tổng quan</span>
                            </a>
                        </li> 
                        <li>
                            <a href="AdminListAccount">
                                <span><i class='bx bxs-user-rectangle'></i></span>
                                <span class="title">Quản lý Tai Khoan</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="MotelManager?action=all">
                                <span><i class='bx bx-home'></i></span>
                                <span class="title">Quản lý Motel</span>
                            </a>
                        </li>
                        <li>
                            <a href="UserManager?action=all&role=US">
                                <span><i class='bx bxs-user-rectangle'></i></span>
                                <span class="title">Quản lý người thuê</span>
                            </a>
                        </li>
                        <li>
                            <a href="UserManager?action=all&role=OW">
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
                    <div class="col-sm-12">
                        <div class="toggle float-left">
                            <i class='bx bx-menu'></i>
                        </div>
                        <div class="float-left">
                            <div class="dashboard_bar d-flex">
                                Quản lý phòng trọ
                            </div>
                        </div>
                        <div class="float-right">
                             <div class="btn-group me-1 mb-1">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   Thuy CTP ${sessionScope.LOGIN_USER.fullName}
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="">
                                    <a class="dropdown-item" href="owner-profile.html"><i class="bx bx-user"></i>Tài khoản</a>
                                    <a class="dropdown-item" href="owner-notification.html"><i class="bx bx-bell"></i>Thông báo</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class="bx bx-log-out-circle"></i>Thoát</a>
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
                                                    <c:if test="${requestScope.ADMIN_LIST_MOTEL != null}">
                                                        <c:if test="${not empty requestScope.ADMIN_LIST_MOTEL}">
                                                            <c:forEach var="motel" varStatus="counter" items="${requestScope.ADMIN_LIST_MOTEL}">

                                                            <form action="MainController">
                                                                <tr>
                                                                    <td>${motel.motelID}</td>
                                                                    <td>
                                                                        <img src="${motel.image}">
                                                                    </td>
                                                                    <td>${motel.name}</td>
                                                                    <td>${motel.phone}</td>
                                                                    <td>${motel.address},${motel.district},${motel.city}</td>
                                                                    <td>${motel.rating}</td>
                                                                    <td>${motel.ownerId}</td>
                                                                    <td>
                                                                        <c:if test="${motel.status == 0}">
                                                                            <span class="badge badge-danger">Extended</span>
                                                                        </c:if> 
                                                                        <c:if test="${motel.status == 1}">
                                                                            <span class="badge badge-success">Activity</span>
                                                                        </c:if> 
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex">
                                                                            <a href="MotelManager?action=detail&motelID=${motel.motelID}" class="btn btn-info m-b-xs shadow btn-xs sharp me-1 "><i class='bx bxs-pencil'></i></a>
                                                                            <a href="MotelManager?action=delete&motelID=${motel.motelID}" class="btn btn-danger shadow btn-xs sharp"><i class='bx bxs-trash-alt' ></i></a>
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