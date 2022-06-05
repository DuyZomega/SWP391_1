

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
                    <li >
                        <a href="admin-motel.jsp">
                            <span><i class='bx bx-home'></i></span>
                            <span class="title">Quản lý Motel</span>
                        </a>
                    </li>
                    <li  class="active">
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
                            Quản lý người dùng
                        </div>
                    </div>
                    <div class="float-right">
                        <div class="dropdown">
                            <div class="dropdown dib">
                                <div class="header-icon" data-toggle="dropdown">
                                    <span class="user-avatar">${sessionScope.LOGIN_USER.fullName}
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
                                                    <a href="owner-setting.html">
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
                                                    <th>Image</th>
                                                    <th>FullName</th>
                                                    <th>Email</th>
                                                    <th>SDT</th>
                                                    <th>Địa chỉ</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Image link</td>
                                                    <td>Thủy</td>
                                                    <td>thuyctp@gmail.com</td>
                                                    <td>123456789</td>
                                                    <td>03 C18 Phú Nhuận Hồ Chí Minh</td>
                                                    <td>True</td>
                                                    <td>Del   /   Upd</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Image link</td>
                                                    <td>Thủy</td>
                                                    <td>thuyctp@gmail.com</td>
                                                    <td>123456789</td>
                                                    <td>03 C18 Phú Nhuận Hồ Chí Minh</td>
                                                    <td>True</td>
                                                    <td>Del   /   Upd</td>
                                                </tr>
                                            </tbody>
                                        </table>
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
    <script src="assets/js/owner-script.js"></script>
</body>
</html>