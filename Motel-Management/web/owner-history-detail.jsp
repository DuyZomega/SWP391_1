<%-- 
    Document   : owner-history-detail
    Created on : Jun 15, 2022, 2:19:05 AM
    Author     : Bao
--%>

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
    <!-- Data-Table -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
</head>
<body>


    <div id="main-wrapper">
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
                    <li data-toggle="tooltip"data-placement="right" title="Tổng quan">
                        <a href="owner-index.jsp">
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
                                <a href="owner-room-list.jsp" li class="dropdown-item">
                                    <i class='bx bx-home-alt-2'></i>
                                    <span class="title">Nhà nghỉ</span>
                                </a> 
                            </li>
                            <li class="active" data-toggle="tooltip"data-placement="right" title="Quản lý phòng">
                                <a href="owner-room-list.jsp" li class="dropdown-item">
                                    <i class='bx bx-calendar-edit'></i>
                                    <span class="title">Phòng</span>
                                </a>
                            </li> 
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý dịch vụ">
                                <a href="owner-service.jsp" li class="dropdown-item">
                                    <i class='bx bx-cloud-rain'></i>
                                    <span class="title">Dịch vụ</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Lịch sử">
                        <a href="owner-history-room.jsp">
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
                    <li data-toggle="tooltip"data-placement="right" title="Nhận xét">
                        <a href="owner-feedback.jsp">
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
                                Lịch Sử Thuê Phòng
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
                        <div class="offset-sm-6 col-sm-6  d-flex justify-content-sm-end p-md-0 mt-2 mt-sm-0 ">
                            <ol class="breadcrumb">
                                <li class="breadcrumd-item">
                                    <a href="owner-history-room.html">Lịch sử thuê phòng</a>
                                </li>
                                <li class="breadcrumd-item">
                                    <span>/</span>
                                </li>
                                <li class="breadcrumd-item active">
                                    <a href="owner-history-detail.html">Chi tiết</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 customer-detail">
                            <div class="col-lg-4 customer-profile">
                                <div class="card profile">
                                    <div class="card-header">
                                        <h5>Thông tin người thuê</h5>
                                    </div>
                                    <div class="card-body flex-wrap">
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Họ và tên:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span>Trần Ngọc Hải</span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Số điện thoại:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span>0971520977</span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name" style="display: block;">CCCD/CMND:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span>000000000000</span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Địa chỉ:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span>Q9, Hồ Chí Minh</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card rating">
                                    <div class="card-header">
                                        <h5>Đánh Giá</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Số sao:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <i class='bx bxs-star yellow'></i>
                                                <i class='bx bxs-star yellow'></i>
                                                <i class='bx bxs-star yellow'></i>
                                                <i class='bx bxs-star yellow'></i>
                                                <i class='bx bx-star'></i>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Nhận xét riêng:</label>
                                            </div>
                                            <div class="col-md-6">
                                                <span>Phòng ngủ rất tuyệt vời!
                                                    Cần cải thiện ánh sáng đèn.
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 customer-booking">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Thông tin đặt phòng</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Trạng thái:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span class="outcome">Đã Thanh Toán</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class=" col-sm-4 text-sm-right">
                                                <span>Mã đặt phòng:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span>A1</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class=" col-sm-4 text-sm-right">
                                                <span>Mã Phòng:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span>025</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Loại Phòng:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span>Bình thường</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Mã Motel:</span>
                                            </div>
                                            <div class="col-sm-2 text-sm-left">
                                                <span>Motel1</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Địa chỉ:</span>
                                            </div>
                                            <div class="col-sm-8 text-sm-left">
                                                <span>111A - Đình Phong Phú - Q.9 - Hồ Chí Minh</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Ngày thuê:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span>25/05/2022</span>
                                            </div>
                                            
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Ngày trả:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span>26/05/2022</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Dịch vụ sử dụng:</span>
                                            </div>
                                            <div class="col-sm-4 text-sm-left">
                                                <ul>
                                                    <li>Thuê xe</li>
                                                    <li>Đồ uống (CoCaCoLa)</li>
                                                    <li>Đồ ăn (Hủ Tiếu)</li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-2 text-sm-left">
                                                <ul>
                                                    <li>150,000 vnđ</li>
                                                    <li>10,000  vnđ</li>
                                                    <li>25,000  vnđ</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Phương thức thanh toán:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span>Tiền mặt</span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Tổng tiền:</span>
                                            </div>
                                            <div class="col-sm-3 text-sm-left">
                                                <span style="color: red;">320.000 vnđ</span>
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

        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/owner-script.js"></script>
</body>
</html>
