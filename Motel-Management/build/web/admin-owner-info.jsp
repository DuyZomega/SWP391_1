<%-- 
    Document   : admin-owner-info
    Created on : Jun 9, 2022, 8:28:16 PM
    Author     : cao thi phuong thuy
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home On Road</title>
        <link rel="shortcut icon" href="assets/img/logo2.png">   
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!--Boxicons-->
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <!-- CSS -->
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
                        <li class="active">
                            <a href="admin.jsp">
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
                        <li >
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

        <div class="main-content">
            <div class="main">

                <div class="container row justify-content-md-center">
                    <div class="col-12 ">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Thông tin chi tiết</h5>
                                <div class="alert alert-info" role="alert">
                                    Mọi thông tin đều được bảo mật 100%.
                                </div>
                                <c:if test="${requestScope.INFO != null}">
                                    <c:if test="${not empty requestScope.INFO}">

                                        <c:forEach var="o" varStatus="counter" items="${requestScope.INFO}">
                                            <form class="row" action="UserManager">
                                                <div class="mb-3 col-md-12">
                                                    <label for="image" class="form-label">Hình ảnh  <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name="image" value="${o.image}" required="">


                                                </div>
                                                <div class="mb-3 col-md-12">
                                                    <label for="userId" class="form-label">Tên đăng nhập</label>
                                                    <input type="text" class="form-control" name="userId" value="${o.userId}" readonly="">
                                                </div>
                                                <div class="mb-3 col-md-12">
                                                    <label for="fullName" class="form-label">Họ và Tên  <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name="fullName" value="${o.fullName}" required="">
                                                </div>
                                                <div class="mb-3 col-md-6">
                                                    <label for="birthDay" class="form-label">Ngày sinh <span class="text-danger">*</span></label>
                                                    <input type="date" class="form-control" name="DateOfBirth" value="${o.dateOfBirth}" required="">
                                                </div>
                                                <div class="mb-3 col-md-6">
                                                    <label for="gender" class="form-label">Giới tính <span class="text-danger">*</span></label>
                                                    <select class="form-select" name="gender">
                                                         <c:if test="${o.gender == 0}">
                                                            <option value="0">Male</option>
                                                            <option value="1">Female</option>
                                                        </c:if> 
                                                        <c:if test="${o.gender == 1}">
                                                            <option value="1">Female</option>
                                                            <option value="0">Male</option>
                                                        </c:if> 
                                                        
                                                    </select>
                                                </div>
                                                <div class="mb-3 col-md-6">
                                                    <label for="phone" class="form-label">SDT  <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name="phone" pattern="[0-9]{9,11}" value="${o.phone}" required="">
                                                </div>
                                                <div class="mb-3 col-md-6">
                                                    <label for="citizenNumber" class="form-label">CMND/CCCD <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name="citizenNumber" value="${o.citizenNumber}" required="">

                                                </div>
                                                <div class="mb-3 col-md-12">
                                                    <label for="gmail" class="form-label">Email <span class="text-danger">*</span></label>
                                                    <input type="email" class="form-control" name="gmail" value="${o.gmail}" placeholder="">
                                                </div>

                                                <div class="mb-3 col-md-12">
                                                    <label for="address" class="form-label">Địa chỉ</label>
                                                    <input type="text" class="form-control" name="address" value="${o.address}" required="">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="role" class="form-label">Quyền <span class="text-danger">*</span></label>
                                                    <select class="form-select" name="role"  required="">
                                                           <c:if test="${o.role.equals('US')}">
                                                            <option value="US">Người thuê</option>
                                                            <option value="OW">Chủ thuê</option>
                                                        </c:if> 
                                                        <c:if test="${o.role.equals('OW')}">
                                                            <option value="OW">Chủ thuê</option>
                                                            <option value="US">Người thuê</option>
                                                        </c:if> 
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="status" class="form-label">Trạng thái <span class="text-danger">*</span></label>
                                                    <select class="form-select" name="status" required="">
                                                        <c:if test="${o.status == 0}">
                                                            <option value="0">Block</option>
                                                            <option value="1">Activity</option>
                                                        </c:if> 
                                                        <c:if test="${o.status == 1}">
                                                            <option value="1">Activity</option>
                                                            <option value="0">Block</option>
                                                        </c:if> 
                                                    </select>
                                                </div>
                                                <div class="d-grid">
                                                    <button type="submit" value="update" name="action" class="btn btn-info m-b-xs">Cập nhật</button>
                                                </div>
                                            </form>
                                        </c:forEach>
                                    </c:if>
                                </c:if>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="assets/js/owner-script.js"></script>
    </body>
</html>
