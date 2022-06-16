<%-- 
    Document   : user-booking-list
    Created on : Jun 15, 2022, 1:41:35 PM
    Author     : cao thi phuong thuy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="sample.owner.HistoryDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lịch sử đặt phòng</title>
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
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRole().equals("US")) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>

        <!-- sidebar -->
        <div class="sidebar">
            <div class="container">
                <div class="navigation">
                    <ul class="slide-menu">
                        <div class="logo">
                            <a href="ShowMotelController">
                                <img class="logo" src="assets/img/logo2.png" alt="logo">
                            </a>
                        </div>

                        <li class="active" data-toggle="tooltip"data-placement="right" title="Lịch sử">
                            <a href="#">
                                <span><i class='bx bx-history'></i></span>
                                <span class="title">Lịch sử đặt phòng</span>
                            </a>
                        </li>
                        <li data-toggle="tooltip"data-placement="right" title="Thông báo">
                            <a href="#">
                                <span><i class='bx bx-bell'></i></span>
                                <span class="title">Thông báo</span>
                            </a>
                        </li>
                        <li>
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
        <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>
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
                                Tài Khoản
                            </div>
                        </div>
                        <div class="float-right">
                            <div class="btn-group me-1 mb-1">
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${sessionScope.LOGIN_USER.fullName}
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>"><i class='bx bx-user'></i>Tài khoản</a>
                                        <a class="dropdown-item" href="#"><i class='bx bx-bell'></i>Thông báo</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="MainController?action=Logout"><i class='bx bx-log-out-circle'></i>Thoát</a>
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
                                            <table id="myTable" class="table table-hover table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Mã đặt phòng</th>
                                                        <th>Tên Motel</th>
                                                        <th>Mã Phòng</th>
                                                        <th>Ngày đặt phòng</th>
                                                        <th>Tổng tiền</th>
                                                        <th>Tình trạng</th>
                                                        <th>Action</th> <!-- đánh giá / hủy phòng trong 30p -->
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        List<HistoryDTO> listHistory = (ArrayList<HistoryDTO>) request.getAttribute("LIST_HISTORY");
                                                        for (HistoryDTO history : listHistory) {
                                                            String status = "Đã Hủy";

                                                    %>
                                                    <tr class='clickable-row' data-href="#" 
                                                        data-bs-toggle="tooltip"data-bs-placement="right" title="Nhấn để xem chi tiết">
                                                        <td><%= history.getBookingID()%></td>
                                                        <td><%= history.getUserName()%></td>
                                                        <td><%= history.getRoomID()%></td>
                                                        <td><%= history.getDate()%></td>
                                                        <td><%= history.getTotal()%></td>

                                                        <%
                                                            if (history.getStatus().equals("1")) {
                                                        %>
                                                        <td>Đã thanh toán</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <a href="UserManager?action=feedback?userId=<%=loginUser.getUserId()%>&motelID=<%= history.getMotelID()%>" class="btn btn-info m-b-xs shadow btn-xs sharp me-1" data-bs-toggle="tooltip">Đánh giá</a>
                                                                <a href="#" class="btn btn-danger shadow btn-xs sharp">Report</a>
                                                            </div>  

                                                        </td> 
                                                        <%
                                                            }
                                                            if (history.getStatus().equals("0")) {
                                                        %>
                                                        <td>Proccessing</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <a href="#" class="btn btn-danger shadow btn-xs sharp">Hủy phòng</a>
                                                            </div>  

                                                        </td>         
                                                        <%
                                                            }
                                                        %>
                                                    </tr>
                                                    <% }%>   

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
