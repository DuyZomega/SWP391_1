

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
                    <li>
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
                    <li class="active">
                        <a href="owner-history-room.jsp">
                            <span><i class='bx bx-history'></i></span>
                            <span class="title">Lịch sử thuê phòng</span>
                        </a>
                    </li>
                    <li>
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
                            Lịch Sử Thuê Phòng
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
                                                    <th>BookingID</th>
                                                    <th>Motel</th>
                                                    <th>Room</th>
                                                    <th>User Name</th>
                                                    <th>Number Of Service</th>
                                                    <th>Payment methods</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>A1</td>
                                                    <td>Motel 2</td>
                                                    <th>Tên người thuê</th>
                                                    <td>Edinburgh</td>
                                                    <td>03</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B1</td>
                                                    <td>Motel 1</td>
                                                    <th>Tên người thuê</th>
                                                    <td>Tokyo</td>
                                                    <td>02</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A2</td>
                                                    <td>Motel 3</td>
                                                    <th>Tên người thuê</th>
                                                    <td>San Francisco</td>
                                                    <td>01</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B2</td>
                                                    <td>Motel 4</td>
                                                    <td>San Francisco</td>
                                                    <th>Tên người thuê</th>
                                                    <td>00</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A1</td>
                                                    <td>Motel 2</td>
                                                    <td>Edinburgh</td>
                                                    <th>Tên người thuê</th>
                                                    <td>03</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B1</td>
                                                    <td>Motel 1</td>
                                                    <th>Tên người thuê</th>
                                                    <td>Tokyo</td>
                                                    <td>02</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A2</td>
                                                    <td>Motel 3</td>
                                                    <td>San Francisco</td>
                                                    <th>Tên người thuê</th>
                                                    <td>01</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B2</td>
                                                    <td>Motel 4</td>
                                                    <td>San Francisco</td>
                                                    <th>Tên người thuê</th>
                                                    <td>00</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A1</td>
                                                    <td>Motel 2</td>
                                                    <td>Edinburgh</td>
                                                    <th>Tên người thuê</th>
                                                    <td>03</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B1</td>
                                                    <td>Motel 1</td>
                                                    <th>Tên người thuê</th>
                                                    <td>Tokyo</td>
                                                    <td>02</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A2</td>
                                                    <td>Motel 3</td>
                                                    <td>San Francisco</td>
                                                    <th>Tên người thuê</th>
                                                    <td>01</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B2</td>
                                                    <td>Motel 4</td>
                                                    <td>San Francisco</td>
                                                    <th>Tên người thuê</th>
                                                    <td>00</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A1</td>
                                                    <td>Motel 2</td>
                                                    <td>Edinburgh</td>
                                                    <th>Tên người thuê</th>
                                                    <td>03</td>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>B1</td>
                                                    <td>Motel 1</td>
                                                    <td>Tokyo</td>
                                                    <td>02</td>
                                                    <th>Tên người thuê</th>
                                                    <td>Tiền mặt</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>A2</td>
                                                    <td>Motel 3</td>
                                                    <th>Tên người thuê</th>
                                                    <td>San Francisco</td>
                                                    <td>01</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$15</td>
                                                </tr>
                                                <tr>
                                                    <td>B2</td>
                                                    <td>Motel 4</td>
                                                    <th>Tên người thuê</th>
                                                    <td>San Francisco</td>
                                                    <td>00</td>
                                                    <td>Quẹt Thẻ</td>
                                                    <td>$320,800</td>
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