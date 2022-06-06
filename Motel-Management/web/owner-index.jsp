<%-- 
    Document   : owner-index
    Created on : Jun 2, 2022, 11:43:38 PM
    Author     : Bao
--%>

<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
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
                    <%
                            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                            if (loginUser == null || !loginUser.getRole().equals("OW")) {
                                response.sendRedirect("login.jsp");
                                return;           
                            }
                     %>
                    <li class="active">
                        <a href="owner-index.jsp">
                            <span><i class='bx bx-tachometer'></i></span>
                            <span class="title">Tổng quan</span>
                        </a>
                    </li>
                    <li >
                        <a href="MainController?action=ShowRoom&ownerID=<%=loginUser.getUserId()%>">
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
        <!-- num of data -->
        <div class="cardBox">
            <div class="card room">
                <div class="inconBx">
                    <i class='bx bx-home-heart'></i>
                </div>
                <div>
                    <div class="number">1,504</div>
                    <div class="cardName">Số lượng phòng</div>
                </div>
            </div>
            <div class="card service">
                <div class="inconBx">
                    <i class='bx bx-detail'></i>
                </div>
                <div>
                    <div class="number">1,504</div>
                    <div class="cardName">Số lượng dịch vụ</div>
                </div>
            </div>
            <div class="card feedback">
                <div class="inconBx">
                    <i class='bx bx-conversation'></i>
                </div>
                <div>
                    <div class="number">1,504</div>
                    <div class="cardName">Nhận xét</div>
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
        <div class="details">
            <div class="recent-orders">
                <div class="cardHeader">
                    <h2>Thông tin cập nhật</h2>
                    <a href="#" class="btn btn-danger">Xem tất cả</a>
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr class="col bg-opacity-10">
                            <td>Họ và tên</td>
                            <td>Phòng</td>
                            <td>Giá (&#8363;)</td>
                            <td>Trạng thái</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Tran Ngoc Hai</td>
                            <td>001</td>
                            <td>1,200,000</td>
                            <td><span class="demise">Đang thuê</span></td>
                        </tr>
                        <tr>
                            <td>Tran Ngoc Hai</td>
                            <td>002</td>
                            <td>1,200,000</td>
                            <td><span class="outcome">Đã thanh toán</span></td>
                        </tr>
                        <tr>
                            <td>Tran Ngoc Hai</td>
                            <td>003</td>
                            <td>1,200,000</td>
                            <td><span class="destroy">Hủy phòng</span></td>
                        </tr>
                        <tr>
                            <td>Tran Ngoc Hai</td>
                            <td>004</td>
                            <td>1,200,000</td>
                            <td><span class="approval">Chưa nhận phòng</span></td>
                        </tr>
                        <tr>
                            <td>Tran Ngoc Hai</td>
                            <td>005</td>
                            <td>1,200,000</td>
                            <td><span class="demise">Đang thuê</span></td>
                        </tr>
                        <tr>
                            <td>Tran Ngoc Hai</td>
                            <td>006</td>
                            <td>1,200,000</td>
                            <td><span class="outcome">Đã thanh toán</span></td>
                        </tr>
                    </tbody>
                </table>
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
