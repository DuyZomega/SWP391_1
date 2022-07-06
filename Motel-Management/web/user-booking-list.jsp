<%-- 
    Document   : user-booking-list
    Created on : Jun 15, 2022, 1:41:35 PM
    Author     : cao thi phuong thuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Lịch sử</title>
        <link rel="shortcut icon" href="assets/img/logo2.png">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!--Boxicons-->
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
        <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>
        <!-- Data-Table -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/main.css">


    </head>
    <body>
        <%@include file="header.jsp" %> 
        <hr>
        <div class="header__breadcrumb container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" class="text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Thông tin tài khoản</li>

                </ol>
            </nav>
        </div>
        <hr>


        <%            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>

        <!-- End header -->


        <div class="profile container">
            <div class="row">


                <c:if test="${requestScope.MESSAGE != null}">
                    <c:if test="${not empty requestScope.MESSAGE}">
                        <div class="alert hide">
                            <span class="fas fa-exclamation-circle"></span>
                            <span class="msg">${requestScope.MESSAGE}!</span>
                            <div class="close-btn">
                                <span class="fas fa-times"></span>
                            </div>
                        </div>
                    </c:if>
                </c:if>
                <div class="navigation col-2">
                    <ul class="slide-menu">
                        <li>
                            <a href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                                <span><i class='bx bx-user'></i></span>
                                <span class="title">Tài khoản</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="userhistorybooking">
                                <span><i class='bx bx-history'></i></span>
                                <span class="title">Lịch sử thuê phòng</span>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="main-content col-10">
                    <div class="main">
                        <div class="container-fluid">
                            <section>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table id="history-table" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Mã đặt phòng</th>
                                                                <th>Tên Motel</th>
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
                                                            <tr class="clickable-row" data-bs-toggle="tooltip"
                                                                data-bs-placement="right" title="Nhấn để xem chi tiết">
                                                                <td data-toggle="modal" data-target="#detailsModal"><%= history.getBookingID()%></td>
                                                                <td data-toggle="modal" data-target="#detailsModal"><%= history.getUserName()%></td>
                                                                <td data-toggle="modal" data-target="#detailsModal"><%= history.getDate()%></td>
                                                                <td data-toggle="modal" data-target="#detailsModal"><span class="price-format" data-price="<%= history.getTotal()%>"></span></td>

                                                                <%
                                                                    if (history.getStatus().equals("1")) {
                                                                %>
                                                                <td data-toggle="modal" data-target="#detailsModal">Đã hoàn thành</td>
                                                                <td>
                                                                    <div class="d-flex">
                                                                        <div class="add-room">
                                                                            <button data-toggle="modal"  data-target="#feedback" class="button--primary btn-info m-b-xs shadow btn-xs sharp me-1 text-white bg-success">
                                                                                <span>Đánh giá</span>
                                                                            </button>
                                                                        </div>
                                                                        <div class="add-room">
                                                                            <button data-toggle="modal"  data-target="#report" class="button--primary btn-danger shadow btn-xs sharp text-white bg-danger">
                                                                                <span>Report</span>
                                                                            </button>
                                                                        </div>
                                                                    </div>  


                                                                </td> 
                                                                <!-- feedback -->
                                                        <div id="feedback" class="modal fade" role="dialog">
                                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                                <div class="modal-content modal-addRoom">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Đánh giá đơn hàng</h4>
                                                                    </div>
                                                                    <form action="UserManager" method="post">
                                                                        <div class="modal-body">
                                                                            <div class="row p-4">
                                                                                <div class="col-12">
                                                                                    <div class="row form-group">
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
                                                                                <button class=" button--primary bg-success text-white " type="submit" name="action" value="feedback">Đánh giá</button>
                                                                                <button class="button--primary bg-danger text-white" type="button" data-dismiss="modal">Hủy</button>
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
                                                                                <button class="button--primary bg-success text-white" type="submit" name="action" value="report">Report</button>
                                                                                <button class="button--primary bg-danger text-white" type="button" data-dismiss="modal">Hủy</button>
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
                                                        <td data-toggle="modal" data-target="#detailsModal">Đang thực hiện</td>
                                                        <td>
                                                            <button class="button--primary bg-danger text-white clickable-row" data-toggle="modal" data-target="#removeRoom">
                                                                <span>Hủy Phòng</span> 
                                                            </button> 
                                                        </td>        
                                                        <div id="removeRoom" class="modal fade" role="dialog">
                                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                                <div class="modal-content modal-addRoom">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Bạn muốn hủy phòng ?</h4> 
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">×</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-footer justify-content-center">
                                                                        <button class="btn btn-success"><a href="UserManager?action=cancel&bookingID=<%= history.getBookingID()%>&motelID=<%= history.getMotelID()%>" style="color: white">Xác Nhận</a></button>
                                                                        <button class="button--primary bg-danger text-white" type="button" data-dismiss="modal">Hủy</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%
                                                                } else if (history.getStatus().equals("3")) {%>
                                                        <td data-toggle="modal" data-target="#detailsModal">Đã hủy</td>
                                                        <td>
                                                            <div >
                                                                <a href="MainController?action=ShowMotelDetail&motelID=<%= history.getMotelID()%>" class="button--primary bg-primary text-white clickable-row">Xem lại phòng</a>
                                                            </div>  
                                                        </td>      
                                                        <%}
                                                        %>
                                                        <!-- Details Modal khi ấn <tr> hàng -->
                                                        <div class="modal fade" id="detailsModal" tabindex="-1"
                                                             aria-labelledby="detailModalLabel" aria-hidden="true">
                                                            <div
                                                                class="modal-dialog modal-dialog-centered modal-xl">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title"
                                                                            id="detailModalLabel">Chi tiết đặt
                                                                            phòng</h4>
                                                                        <button type="button" class="close"
                                                                                data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <section class="confirm-booking mb-5 pt-2">
                                                                            <div class="container-fluid">
                                                                                <div class="row">
                                                                                    <div class="col-7">
                                                                                        <div class="infor-booking">
                                                                                            <h3 class="heading"><i
                                                                                                    class="fa fa-money-check-alt"></i>
                                                                                                Chi tiết đặt phòng
                                                                                                của bạn</h3>
                                                                                            <div class="box">
                                                                                                <p class="d-flex"><i class="fa fa-hand-point-right"></i>
                                                                                                    <label><span class="label">Tên Motel: </span>
                                                                                                        <span><%= history.getUserName()%></span></label>
                                                                                                </p>
                                                                                                <p class="d-flex"><i  class="fa fa-hand-point-right"></i>
                                                                                                    <label><span class="label">Địa chỉ:</span>
                                                                                                        <span>Thủ Đức</span></label>
                                                                                                </p>
                                                                                                <div class="d-flex">
                                                                                                    <p><i  class="fa fa-hand-point-right"></i><span  class="label">Đơn  giá:</span>
                                                                                                    </p>
                                                                                                </div>
                                                                                                <ul class="ml-3">
                                                                                                    <li>- Phòng  đơn:
                                                                                                        <span>1</span>  phòng <i class="fa fa-arrow-right"></i>
                                                                                                        <span>150.000</span>  VNĐ
                                                                                                    </li>
                                                                                                    <li>- Phòng  đơn:
                                                                                                        <span>1</span>  phòng <i class="fa fa-arrow-right"></i>
                                                                                                        <span>150.000</span>  VNĐ
                                                                                                    </li>
                                                                                                    <hr>
                                                                                                    <li>- Tổng  tiền:
                                                                                                        <span><span class="price-format" data-price="<%= history.getTotal()%>"></span></span>  VNĐ
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-5">
                                                                                        <h3 class="heading"><i  class="fa fa-address-card"></i>
                                                                                            Xác nhận thông tin
                                                                                        </h3>
                                                                                        <div class="box">
                                                                                            <div  class="form-item py-2">
                                                                                                <label  class="font-weight-bold">Họ và Tên:
                                                                                                </label>
                                                                                                <span id="fullName">
                                                                                                    Tran Ngoc
                                                                                                    Hai
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="form-item py-2"> <label  class="font-weight-bold">Phương thức thanh toán: 
                                                                                                </label>
                                                                                                <%
                                                                                                    if (history.getStatus().equals("1")) {
                                                                                                %>
                                                                                                <span>
                                                                                                    Chuyển khoản
                                                                                                </span> 
                                                                                                <%
                                                                                                } else if (history.getStatus().equals("0") || history.getStatus().equals("2")) {
                                                                                                %>
                                                                                                <span>
                                                                                                    Tiền mặt
                                                                                                </span>
                                                                                                <%
                                                                                                    }
                                                                                                %>

                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="infor-owner">
                                                                                            <h3 class="heading"><i class="fas fa-id-card-alt"></i>
                                                                                                Chủ nhà nghỉ</h3>
                                                                                            <div class="box d-flex">
                                                                                                <span><img src="https://hfr.vn/Images/poster.png" alt="profile"></span>
                                                                                                <span class="infor-owner-detail">
                                                                                                    <p class="m-0">
                                                                                                        <span class="label">Họ tên:</span>
                                                                                                        Nguyễn Tuân
                                                                                                    </p>
                                                                                                    <p class="m-0">
                                                                                                        <span class="label">SĐT:</span>
                                                                                                        0865.644.162
                                                                                                    </p>
                                                                                                    <p class="m-0">
                                                                                                        <span class="label">Địa
                                                                                                            chỉ:</span>
                                                                                                        Chí Minh
                                                                                                    </p>
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </section>
                                                                    </div>
                                                                    <div class="modal-footer py-0">
                                                                        <button type="button"
                                                                                class="button--primary bg-danger text-white"
                                                                                data-dismiss="modal">Đóng</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
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
            </div>


        </div>


        <%@include file="footer.jsp" %> 
        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <!-- <script src="assets/js/owner-script.js"></script> -->

        <script src="assets/js/user-script.js"></script>
        <script>
            $(document).ready(function () {
                $("#history-table").DataTable({
                    pagingType: "full_numbers",
                });
            });
        </script>
    </body>
</html>
