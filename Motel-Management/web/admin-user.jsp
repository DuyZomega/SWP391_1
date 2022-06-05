

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Admin</title>
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
                    <li >
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
                            Trang Chủ
                        </div>
                    </div>
                    <div class="float-right">
                        <div class="dropdown">
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <span class="user-avatar">Admin Thuyctp
                                        <i class='bx bx-chevron-down'></i>
                                    </span>
                                    <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-left">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Welcome admin</span>
                                        </div>
                                        <div class="dropdown-content-body">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <i class='bx bx-user'></i>
                                                        <span>Tài khoản</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="owner-setting.jsp">
                                                        <i class='bx bx-cog'></i>
                                                        <span>Cài đặt</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class='bx bx-log-out-circle'></i>
                                                        <span>Thoát</span>
                                                    </a>
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
        </div>
    </div>
    <!-- End header -->

    <!-- Main Content -->

    <div class="main-content">
            <div class="cardBox">
                <div class="card room">
                    <div class="inconBx">
                        <i class='bx bx-home-heart'></i>
                    </div>
                    <div>
                        <div class="number">1,504</div>
                        <div class="cardName">Số lượng motel</div>
                    </div>
                </div>
                <div class="card service">
                    <div class="inconBx">
                        <i class='bx bxs-user-rectangle'></i>
                    </div>
                    <div>
                        <div class="number">1,504</div>
                        <div class="cardName">Người thuê</div>
                    </div>
                </div>
                <div class="card feedback">
                    <div class="inconBx">
                        <i class='bx bx-user-circle'></i>
                    </div>
                    <div>
                        <div class="number">1,504</div>
                        <div class="cardName">Chủ trọ</div>
                    </div>
                </div>
                <div class="card turnover">
                    <div class="inconBx">
                        <i class='bx bx-money'></i>
                    </div>
                    <div>
                        <div class="number">&#8363;1,512.250</div>
                        <div class="cardName">Tổng doanh thu</div>
                    </div>
                </div>
            </div>

            <!-- order detail list -->
            <div class="dashboard row">
                <div class="recent-orders col-12">
                    <div class="cardHeader">
                        <h2>chart</h2>
                        <a href="#" class="btn btn-danger">Xem tất cả</a>
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