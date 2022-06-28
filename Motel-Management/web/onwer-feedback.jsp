<%-- 
    Document   : onwer-feedback
    Created on : Jun 15, 2022, 2:18:02 AM
    Author     : Bao
--%>

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
</head>
<body>
    
     <!-- sidebar -->
     <div class="sidebar">
        <div class="container">
            <div class="navigation">  
                <ul class="slide-menu">
                    <div class="logo">
                        <a href="owner-index.jsp">
                            <img class="logo" src="assets/img/logo2.png" alt="logo">
                        </a>
                    </div>
                    <%
                            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                            if (loginUser == null || !loginUser.getRole().equals("OW")) {
                                response.sendRedirect("login.jsp");
                                return;
                            }
                        %>
                    <li data-toggle="tooltip"data-placement="right" title="Tổng quan">
                        <a href="MainController?action=ShowOverview">
                            <span><i class='bx bx-tachometer'></i></span>
                            <span class="title">Tổng quan</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                            <i class='bx bx-bookmarks'></i>
                            <span class="title">Quản lý</span>
                            <i class='bx bxs-chevron-down drop'></i>
                        </a>
                        <ul class="collapse sub-menu" id="collapseOne">
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý nhà">
                                <a href="MainController?action=ownerShowMotel" li class="dropdown-item">
                                    <i class='bx bx-home-alt-2'></i>
                                    <span class="title">Nhà nghỉ</span>
                                </a> 
                            </li>
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý phòng">
                                <a href="MainController?action=ShowRoom&ownerID=<%=loginUser.getUserId()%>" li class="dropdown-item">
                                    <i class='bx bx-calendar-edit'></i>
                                    <span class="title">Phòng</span>
                                </a>
                            </li> 
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý dịch vụ">
                                <a href="MainController?action=showService" li class="dropdown-item">
                                    <i class='bx bx-cloud-rain'></i>
                                    <span class="title">Dịch vụ</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Lịch sử">
                        <a href="MainController?action=ShowHistory">
                            <span><i class='bx bx-history'></i></span>
                            <span class="title">Lịch sử thuê phòng</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Thông báo">
                        <a href="owner-notification.jsp">
                            <span><i class='bx bx-bell'></i></span>
                            <span class="title">Thông báo</span>
                        </a>
                    </li>
                    <li class="active" data-toggle="tooltip"data-placement="right" title="Nhận xét">
                        <a href="onwer-feedback.jsp">
                            <span><i class="bx bx-detail"></i></span>
                            <span class="title">Nhận xét</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Thống kê">
                        <a href="owner-statistical.jsp">
                            <span><i class='bx bx-line-chart'></i></span>
                            <span class="title">Thống kê</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Tài khoản">
                        <a href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
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
                            Nhận Xét Của Khách Hàng
                        </div>
                    </div>
                    <div class="float-right">
                        <div class="btn-group me-1 mb-1">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Lê Minh Quân
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="owner-profile.html"><i class='bx bx-user'></i>Tài khoản</a>
                                    <a class="dropdown-item" href="owner-notification.html"><i class='bx bx-bell'></i>Thông báo</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class='bx bx-log-out-circle'></i>Thoát</a>
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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="nav flex-column nav-pills mb-3">
                                            <a href="#v-pills-home" data-toggle="pill" class="nav-link active show">
                                                <i class='bx bx-book-content'></i>
                                                <span>Tổng Nhận Xét</span>
                                            </a>
                                            <a href="#v-pills-profile" data-toggle="pill" class="nav-link">
                                                <i class='bx bx-checkbox-minus' ></i>
                                                <span>Chưa đọc</span>
                                            </a>
                                            <a href="#v-pills-messages" data-toggle="pill" class="nav-link">
                                                <i class='bx bx-checkbox-checked'></i>
                                                <span> Đã đọc</span>
                                            </a>
                                            <a href="#v-pills-settings" data-toggle="pill" class="nav-link">
                                                <i class='bx bx-chevron-down-square'></i>
                                                <span>Đã xóa</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="tab-content">
                                            <div id="v-pills-home" class="tab-pane fade active show">
                                                <table class="table table-hover">
                                                    <tbody>
                                                        <tr data-toggle="collapse" data-target="#fb-1" class="feedback">                                                            
                                                            <td>4/5</td>
                                                            <td>Lê Minh Quân</td>
                                                            <td>Anh tuyệt voi lắm:))</td>
                                                            <td>25/5</td>
                                                        </tr>
                                                        <tr data-toggle="collapse" data-target="#fb-2" class="feedback">                                                            
                                                            <td>4/5</td>
                                                            <td>Lê Minh Quân</td>
                                                            <td>Anh tuyệt voi lắm:))</td>
                                                            <td>25/5</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div id="v-pills-profile" class="tab-pane fade">
                                                <table class="table table-hover">
                                                    <tbody>
                                                        <tr data-toggle="collapse" data-target="#fb-1" class="feedback">                                                            
                                                            <td>4/5</td>
                                                            <td>Lê Minh Quân</td>
                                                            <td>Anh tuyệt voi lắm:))</td>
                                                            <td>25/5</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div id="v-pills-messages" class="tab-pane fade">
                                            </div>
                                            <div id="v-pills-settings" class="tab-pane fade">
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="col-sm-5">
                                        <div id="fb-1" class="collapse">
                                            <div  class="feedback-box">
                                                <div class="d-flex justify-content-between fb-box-header">
                                                    <div class="d-flex align-items-center">
                                                        <img src="assets/img/avatar.jpg" alt="Avatar" class="mr-3 main-img">
                                                        <h6 class="text-dark mb-sm-1 title-nm">Lê Minh Quân</h6>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="d-sm-inline-block d-none">3/5*  25/5</span>
                                                        <div class="dropdown ml-2">
                                                            <a href="#" data-toggle="dropdown"><i class='bx bx-dots-vertical-rounded'></i></a>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Xóa</a>
                                                                <a class="dropdown-item" href="#"></a>
                                                                <a class="dropdown-item" href="#">Chi tiết</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="fb-box-area">
                                                </div>
                                                <div class="card-footer border-0 fb-box-send">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Type message...">
                                                        <div class="input-group-append">
                                                            <button type="button" class="bn p-0 mr-3">
                                                                <i class='bx bx-paperclip'></i>
                                                            </button>
                                                            <button type="button" class="bn p-0 mr-3">
                                                                <i class='bx bx-image'></i>
                                                            </button>
                                                            <button type="button" class="bn btn-primary send-btn">SEND</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="fb-2" class="collapse">
                                            <div class="feedback-box">
                                                <div class="d-flex justify-content-between fb-box-header">
                                                    <div class="d-flex align-items-center">
                                                        <img src="assets/img/avatar.jpg" alt="Avatar" class="mr-3 main-img">
                                                        <h6 class="text-dark mb-sm-1 title-nm">Lê Minh Quân</h6>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="d-sm-inline-block d-none">3/5*  25/5</span>
                                                        <div class="dropdown ml-2">
                                                            <a href="#" data-toggle="dropdown"><i class='bx bx-dots-vertical-rounded'></i></a>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Xóa</a>
                                                                <a class="dropdown-item" href="#"></a>
                                                                <a class="dropdown-item" href="#">Chi tiết</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="fb-box-area">
                                                </div>
                                                <div class="card-footer border-0 fb-box-send">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Type message...">
                                                        <div class="input-group-append">
                                                            <button type="button" class="bn p-0 mr-3">
                                                                <i class='bx bx-paperclip'></i>
                                                            </button>
                                                            <button type="button" class="bn p-0 mr-3">
                                                                <i class='bx bx-image'></i>
                                                            </button>
                                                            <button type="button" class="bn btn-primary send-btn">SEND</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End header -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/owner-script.js"></script>
</body>
</html>
