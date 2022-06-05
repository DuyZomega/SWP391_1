

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home On Road</title>
    <link rel="shortcut icon" href="assets/img/logo2.png">
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/owner-style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <!--Boxicons-->
    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
</head>
<body>
    <!-- sidebar -->
    <div class="sidebar">
        <div class="container">
            <div class="navigation">  
                <ul>
                    <div class="logo">
                        <a href="owner-index.jsp">
                            <img class="logo" src="assets/img/logo2.png" alt="logo">
                        </a>
                    </div>
                    <li>
                        <a href="owner-index.jsp">
                            <span><i class='bx bx-tachometer'></i></span>
                            <span class="title">Tổng quan</span>
                        </a>
                    </li>
                    <li >
                        <a href="owner-room-list.jsp">
                            <span><i class='bx bx-home'></i></span>
                            <span class="title">Phòng</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-service.jsp">
                            <span><i class='bx bx-cloud-rain'></i></span>
                            <span class="title">Dịch vụ</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-history-room.jsp">
                            <span><i class='bx bx-history'></i></span>
                            <span class="title">Lịch sử thuê phòng</span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="owner-notification.jsp">
                            <span><i class='bx bx-bell'></i></span>
                            <span class="title">Gửi thông báo</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-statistical.jsp">
                            <span><i class='bx bx-line-chart'></i></span>
                            <span class="title">Thống kê</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-profile.jsp">
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
                            Trang Chủ
                        </div>
                    </div>
                    <div class="float-right">
                        <div class="header-icon">
                            <a href="#" class="user-avatar">
                                <span >Thoát</span>
                                <i class='bx bx-log-in-circle'></i>
                            </a>
                        </div>   
                    </div>   
                </div>
            </div>
        </div>
    </div>
    <!-- End header -->

    <!-- Main Content -->
    <div class="main-content">

    </div>
    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/owner-script.js"></script>
</body>
</html>