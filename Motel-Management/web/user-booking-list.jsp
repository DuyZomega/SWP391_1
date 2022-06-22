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
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!-- FONT AWESOME -->
        <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>

        <!-- Fotorama from CDNJS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
        <!--Boxicons-->
        <!-- Data-Table -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="./assets/css/main.css">

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
                            <a href="userhistorybooking">
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
                                                        <td>Đã hoàn thành</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <!--<a href="UserManager?action=feedback?userId=<%=loginUser.getUserId()%>&motelID=<%= history.getMotelID()%>" class="btn btn-info m-b-xs shadow btn-xs sharp me-1" data-bs-toggle="tooltip">Đánh giá</a>-->
                                                                <div class="add-room">
                                                                    <button data-toggle="modal"  data-target="#feedback" class="btn btn-info m-b-xs shadow btn-xs sharp me-1">
                                                                        <span>Đánh giá</span>
                                                                    </button>
                                                                </div>
                                                                <div class="add-room">
                                                                    <button data-toggle="modal"  data-target="#report" class="btn btn-danger shadow btn-xs sharp">
                                                                        <span>Report</span>
                                                                    </button>
                                                                </div>
                                                                <!--                                                                <a href="#" class="btn btn-danger shadow btn-xs sharp">Report</a>-->
                                                            </div>  


                                                        </td> 
                                                        <!-- feedback -->
                                                <div id="feedback" class="modal fade" role="dialog">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                        <div class="modal-content modal-addRoom">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title">Đánh giá đơn hàng</h4>
                                                            </div>
                                                            <form action="UserManager">
                                                                <div class="modal-body">
                                                                    <div class="row p-4">
                                                                        <div class="col-12">
                                                                            <div class="row form-group stars">
                                                                                 <input name="bookingID" value="<%= history.getBookingID()%>" style="display: none">
                                                                                <input name="userID" value="<%=loginUser.getUserId()%>" style="display: none">
                                                                                <input name="motelID" value="<%= history.getMotelID()%>" style="display: none">
                                                                                <label for="rating" class="col-md-3 col-form-label text-md-right">Rating</label>
                                                                                <div class="form-group col-md-5 stars">
                                                                                    <input class="star star-5" id="star-5" type="radio" name="rating" value="5"/>
                                                                                    <label class="star star-5" for="star-5"></label>
                                                                                    <input class="star star-4" id="star-4" type="radio" name="rating" value="4"/>
                                                                                    <label class="star star-4" for="star-4"></label>
                                                                                    <input class="star star-3" id="star-3" type="radio" name="rating" value="3"/>
                                                                                    <label class="star star-3" for="star-3"></label>
                                                                                    <input class="star star-2" id="star-2" type="radio" name="rating" value="2"/>
                                                                                    <label class="star star-2" for="star-2"></label>
                                                                                    <input class="star star-1" id="star-1" type="radio" name="rating" value="1"/>
                                                                                    <label class="star star-1" for="star-1"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row form-group">
                                                                                <label for="desct" class="col-md-3 col-form-label text-md-right">Nội dung</label>
                                                                                <textarea type="text" placeholder="Mô tả phòng..." required class="form-control col-md-7" rows="3" name="desct"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer justify-content-center">
                                                                        <button class="btn btn-success" type="submit" name="action" value="feedback">Đánh giá</button>
                                                                        <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- end feedback -->

                                                <!-- Report -->
                                                <div id="report" class="modal fade" role="dialog">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                        <div class="modal-content modal-addRoom">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title">Report</h4>
                                                            </div>
                                                            <form action="UserManager">
                                                                <div class="modal-body">
                                                                    <div class="row p-4">
                                                                        <div class="col-12">
                                                                            <input name="userID" value="<%=loginUser.getUserId()%>" style="display: none">
                                                                            <input name="motelID" value="<%= history.getMotelID()%>" style="display: none">
                                                                            <div class="row form-group">
                                                                                <label for="rating" class="col-md-3 col-form-label text-md-right">Tiêu đề</label>
                                                                                <input type="text" name="title"  placeholder="Tiêu đề"  class="col-md-7 form-control"/>
                                                                            </div>
                                                                            <div class="row form-group">
                                                                                <label for="rating" class="col-md-3 col-form-label text-md-right">Ngày xảy ra</label>
                                                                                <input type="date" name="date" placeholder="Giá Phòng"  class="col-md-7 form-control"/>
                                                                            </div>
                                                                            <div class="row form-group">
                                                                                <label for="desct" class="col-md-3 col-form-label text-md-right">Nội dung</label>
                                                                                <textarea type="text" placeholder="Mô tả sự việc..." required class="form-control col-md-7" rows="3" name="desct"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer justify-content-center">
                                                                        <button class="btn btn-success" type="submit" name="action" value="report">Report</button>
                                                                        <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- end Report -->
                                                <%
                                                } else if (history.getStatus().equals("0") || history.getStatus().equals("2")) {
                                                %>
                                                <td>Đang thực hiện</td>
                                                <td>
                                                    <!--                                                    <div class="d-flex">
                                                                                                            <a href="UserManager?action=cancel&bookingID=<%= history.getBookingID()%>&roomID=<%= history.getRoomID()%>" class="btn btn-danger shadow btn-xs sharp">Hủy phòng</a>
                                                                                                        </div>  -->

                                                    <button class="btn btn-danger" data-toggle="modal" data-target="#removeRoom">
                                                        <span>Hủy Phòng</span> 
                                                    </button> 
                                                </td>        

                                                <div id="removeRoom" class="modal fade" role="dialog">
                                                    <div class="modal-dialog modal-dialog-centered" role="content">
                                                        <div class="modal-content">
                                                            <div class="card-body">
                                                                <div class="del-title">
                                                                    <i class='bx bx-error-circle'></i>
                                                                    <h2>Bạn muốn hủy phòng ?</h2> 
                                                                </div>
                                                                <div class="del-submit d-flex justify-content-center">
                                                                    <button class="btn btn-success"><a href="UserManager?action=cancel&bookingID=<%= history.getBookingID()%>&roomID=<%= history.getRoomID()%>" style="color: white">Xác Nhận</a></button>
                                                                    <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%
                                                } else if (history.getStatus().equals("3")) {%>
                                                <td>Đã hủy</td>
                                                <td>
                                                    <div >
                                                        <a href="ShowAllMotelController" class="btn btn-primary clickable-row">Xem lại phòng</a>
                                                    </div>  
                                                </td>      
                                                <%}
                                                %>
                                                <!-- feedback form -->
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/fontawesome.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>

        <script src="assets/js/owner-script.js"></script>
    </body>
</html>
