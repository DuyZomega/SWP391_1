

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
                <ul class="slide-menu">
                    <div class="logo">
                        <a href="owner-index.html">
                            <img class="logo" src="assets/img/logo2.png" alt="logo">
                        </a>
                    </div>
                    <li data-toggle="tooltip"data-placement="right" title="Tổng quan">
                        <a href="owner-index.html">
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
                                <a href="owner-room-list.html" li class="dropdown-item">
                                    <i class='bx bx-home-alt-2'></i>
                                    <span class="title">Nhà nghỉ</span>
                                </a> 
                            </li>
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý phòng">
                                <a href="owner-room-list.html" li class="dropdown-item">
                                    <i class='bx bx-calendar-edit'></i>
                                    <span class="title">Phòng</span>
                                </a>
                            </li> 
                            <li class="active" data-toggle="tooltip"data-placement="right" title="Quản lý dịch vụ">
                                <a href="owner-service.html" li class="dropdown-item">
                                    <i class='bx bx-cloud-rain'></i>
                                    <span class="title">Dịch vụ</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Lịch sử">
                        <a href="owner-history-room.html">
                            <span><i class='bx bx-history'></i></span>
                            <span class="title">Lịch sử thuê phòng</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Thông báo">
                        <a href="owner-notification.html">
                            <span><i class='bx bx-bell'></i></span>
                            <span class="title">Thông báo</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Nhận xét">
                        <a href="owner-feedback.html">
                            <span><i class="bx bx-detail"></i></span>
                            <span class="title">Nhận xét</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Thống kê">
                        <a href="owner-statistical.html">
                            <span><i class='bx bx-line-chart'></i></span>
                            <span class="title">Thống kê</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Tài khoản">
                        <a href="owner-profile.html">
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