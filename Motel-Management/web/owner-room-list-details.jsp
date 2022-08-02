<%-- 
    Document   : owner-room-list-details
    Created on : Jun 15, 2022, 2:36:31 AM
    Author     : Bao
--%>
<%@page import="sample.room.RoomTypeDTO"%>
<%@page buffer="8192kb" autoFlush="true" %>
<%@page import="sample.service.ServiceDTO"%>
<%@page import="sample.motel.MotelDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sample.users.UserDTO"%>
<%@page import="sample.owner.RoomDetailDTO"%>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <!--Boxicons-->
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <!-- Other-->
        <link rel="stylesheet" href="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.css" >
    </head>
    <body>
        <!-- sidebar -->
        <div class="sidebar">
            <div class="container">
                <div class="navigation">  
                    <ul class="slide-menu">
                        <div class="logo">
                            <a href="MainController?action=ShowOverview">
                                <img class="logo" src="assets/img/logo2.png" alt="logo">
                            </a>
                        </div>
                        <li data-toggle="tooltip"data-placement="right" title="Tổng quan">
                            <a href="MainController?action=ShowOverview">
                                <span><i class='bx bx-tachometer'></i></span>
                                <span class="title">Tổng quan</span>
                            </a>
                        </li>
                        <%
                            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                            if (loginUser == null || !loginUser.getRole().equals("OW")) {
                                response.sendRedirect("login.jsp");
                                return;
                            }
                        %>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                <i class='bx bx-bookmarks'></i>
                                <span class="title">Quản lý</span>
                                <i class='bx bxs-chevron-down drop'></i>
                            </a>
                            <ul class="collapse sub-menu" id="collapseOne">
                                <li data-toggle="tooltip"data-placement="right" title="Quản lý nhà">
                                    <a href="MainController?action=ownerShowMotel" li class="dropdown-item">
                                        <i class='bx bx-home-alt-2'></i>
                                        <span class="title">Nhà nghỉ</span>
                                    </a> 
                                </li>
                                <li class="active" data-toggle="tooltip"data-placement="right" title="Quản lý phòng">
                                    <a href="MainController?action=ShowRoom&ownerID=<%=loginUser.getUserId()%>" li class="dropdown-item">
                                        <i class='bx bx-calendar-edit'></i>
                                        <span class="title">Phòng</span>
                                    </a>
                                </li> 
                                <li data-toggle="tooltip"data-placement="right" title="Quản lý dịch vụ">
                                    <a href="MainController?action=showService" li class="dropdown-item">
                                        <i class='bx bx-cloud-rain'></i>
                                        <span class="title">Dịch vụ</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li data-toggle="tooltip"data-placement="right" title="Lịch sử">
                            <a href="MainController?action=ShowHistory">
                                <span><i class='bx bx-history'></i></span>
                                <span class="title">Lịch sử thuê phòng</span>
                            </a>
                        </li>
                        <li data-toggle="tooltip"data-placement="right" title="Thông báo">
                            <a href="MainController?action=notify">
                                <span><i class='bx bx-bell'></i></span>
                                <span class="title">Thông báo</span>
                            </a>
                        </li>
                        <li data-toggle="tooltip"data-placement="right" title="Thống kê">
                            <a href="MainController?action=showChart">
                                <span><i class='bx bx-line-chart'></i></span>
                                <span class="title">Thống kê</span>
                            </a>
                        </li>
                        <li data-toggle="tooltip"data-placement="right" title="Tài khoản">
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
                                Quản Lý Phòng
                            </div>
                        </div>
                        <div class="float-right">
                            <div class="btn-group me-1 mb-1">
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <%=loginUser.getFullName()%>
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>"><i class='bx bx-user'></i>Tài khoản</a>
                                        <a class="dropdown-item" href="MainController?action=notify"><i class='bx bx-bell'></i>Thông báo</a>
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

        <!-- List room -->
        <div class="main-content">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-1 d-flex align-items-center justify-content-center btn-back">
                            <i class='bx bx-arrow-back' onclick="history.back()"></i>
                        </div>
                        <div class="offset-sm-5 col-sm-6 d-flex justify-content-sm-end p-md-0 mt-2 mt-sm-0 ">
                            <ol class="breadcrumb">
                                <li class="breadcrumd-item">
                                    <a href="#">Quản lý</a>
                                </li>
                                <li class="breadcrumd-item">
                                    <span>/</span>
                                </li>
                                <li class="breadcrumd-item">
                                    <a href="owner-room-list.jsp">Phòng</a>
                                </li>
                                <li class="breadcrumd-item">
                                    <span>/</span>
                                </li>
                                <li class="breadcrumd-item active">
                                    <a href="#">Chi tiết</a>
                                </li>
                            </ol>
                        </div>
                    </div>

                    <div class="row" id="exportContent">
                        <div class="col-12 customer-detail">
                            <div class="col-lg-7 customer-booking">
                                <div class="card profile mb-4">
                                    <%
                                        RoomDetailDTO roomDetail = (RoomDetailDTO) request.getAttribute("ROOM_DETAIL");
                                        if (roomDetail == null) {
                                            roomDetail = new RoomDetailDTO();
                                        }

                                    %>
                                    <div class="card-header">
                                        <h4>Thông tin đặt phòng</h4>
                                        <button class="btn btn-primary" onclick="Export2Doc('exportContent', 'Phòng <%= roomDetail.getRoomID()%>');">Xuất</button>
                                    </div>
                                    
                                    <div class="card-body">
                                        <div class="row mb-sm-2">
                                            <%                                               if (roomDetail.getStatus() != 1) {
                                            %>                                          
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Trạng thái:</span>
                                            </div>
                                            <div class="col-sm-8">
                                                <%
                                                    String status = "Trống";
                                                    if (roomDetail.getStatus() == 1) {
                                                        status = "Đang Thuê";
                                                %>
                                                <span class="destroy" style="float: left;"><%= status%></span>
                                                <%
                                                } else {%>
                                                <span class="outcome" style="float: left;"><%= status%></span>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <%
                                                }
                                            %>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Mã đặt phòng:</span>
                                            </div>
                                            <div class="col-sm-8 text-sm-left">
                                                <% if (roomDetail.getBookingID() == "") {
                                                %>
                                                <span>----------</span>
                                                <%
                                                } else {
                                                %>
                                                <span><%= roomDetail.getBookingID()%></span>
                                                <%
                                                    }
                                                %>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Mã Phòng:</span>
                                            </div>
                                            <div class="col-sm-8 text-sm-left">
                                                <span><%= roomDetail.getRoomID()%></span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Loại Phòng:</span>
                                            </div>
                                            <div class="col-sm-8 text-sm-left">
                                                <span><%= roomDetail.getRoomType()%></span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Mã Motel:</span>
                                            </div>
                                            <div class="col-sm-8 text-sm-left">
                                                <span><%= roomDetail.getMotelID()%></span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-4 text-sm-right">
                                                <span>Địa chỉ:</span>
                                            </div>
                                            <div class="col-sm-8 text-sm-left">
                                                <span><%= roomDetail.getAddress()%> - <%= roomDetail.getDistrict()%> - <%= roomDetail.getCity()%></span>
                                            </div>
                                        </div>                                   
                                    </div>
                                </div>
                                <%
                                    UserDTO userProfile = (UserDTO) request.getAttribute("USER_PROFILE");
                                    if (userProfile == null) {
                                        userProfile = new UserDTO();
                                    }
                                %>         
                                <div class="card profile mb-4">
                                    <div class="card-header">
                                        <h4>Thông tin người thuê</h4>   
                                        <div class="edit-info">
                                            <% if (roomDetail.getStatus() == 0) { %>
                                            <i class='bx bxs-edit-alt'data-toggle="modal" data-target="#addCustomer"></i>
                                            <% }%>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Họ và tên:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span><%= userProfile.getFullName()%></span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Số điện thoại:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span><%= userProfile.getPhone()%></span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">CCCD/ CMND:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span><%= userProfile.getCitizenNumber()%></span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5 text-md-right">
                                                <label for="customer-name">Địa chỉ:</label>
                                            </div>
                                            <div class="col-md-7">
                                                <span><%= userProfile.getAddress()%></span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-5 text-sm-right">
                                                <span>Ngày thuê:</span>
                                            </div>
                                            <div class="col-sm-7 text-sm-left">
                                                <span><%= roomDetail.getBookingDate()%></span>
                                            </div>
                                        </div>
                                        <div class="row mb-sm-2">
                                            <div class="col-sm-5 text-sm-right">
                                                <span>Số giờ thuê:</span>
                                            </div>
                                            <div class="col-sm-7 text-sm-left">
                                                <span><%= roomDetail.getTime()%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                            </div>
                            <div class="col-lg-5 total-pay">
                                <div class="card rating">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-center pb-3">
                                            <h5 >Dịch vụ sử dụng</h5>
                                            <% if (roomDetail.getBookingID() != "") { %>
                                            <i class='bx bxs-edit-alt'data-toggle="modal" data-target="#addServiceBooking"></i>
                                            <% } %>
                                        </div>
                                        <div class="row">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-borderless">
                                                    <thead>
                                                        <tr>
                                                            <th>Mã Dịch vụ</th>
                                                            <th>Tên Dịch vụ</th>
                                                            <th>Số tiền</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            List<ServiceDTO> listService = (ArrayList<ServiceDTO>) request.getAttribute("SERVICE_LIST");
                                                            int total = 0;
                                                            if (listService != null) {
                                                                if (listService.size() > 0) {
                                                                    for (ServiceDTO service : listService) {
                                                                        int price = service.getPrice() * service.getQuantity();
                                                                        total += price;
                                                        %>
                                                        <tr>
                                                            <td><%= service.getServiceId()%></td>
                                                            <td><%= service.getName()%></td>
                                                            <td><span class="price-format" data-price="<%= price%>"></span></td>
                                                        </tr>
                                                        <%
                                                                    }
                                                                }
                                                            }
                                                        %> 
                                                    </tbody>
                                                    <tfoot style="color: #e74c3c; border-top: 1px solid #ccc;">
                                                        <tr>
                                                            <th>Total</th>
                                                            <th></th>
                                                            <th><span class="price-format" data-price="<%= total%>"></span></th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">                                   
                                    <div class="card-body flex-wrap">
                                        <div class="d-flex justify-content-center pb-3">
                                            <h5 >Tổng tiền</h5>
                                        </div>
                                        <div class="row">
                                            <div class="table-responsive">
                                                <table id="table" class="table table-hover table-borderless">
                                                    <thead>
                                                        <tr>
                                                            <th>STT</th>
                                                            <th>Nội dung thanh toán</th>
                                                            <th>Số tiền</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% int totalRoom = 0;
                                                            totalRoom = (int) request.getAttribute("TOTAL_ROOM");%>
                                                        <tr>
                                                            <td>01</td>
                                                            <td>Giá Phòng</td>
                                                            <td><span class="price-format" data-price="<%= totalRoom%>"></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td>02</td>
                                                            <td>Dịch vụ</td>
                                                            <td><span class="price-format" data-price="<%= total%>"></span></td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot style="color: #e74c3c; border-top: 1px solid #ccc;">
                                                        <tr>
                                                            <th>Total</th>
                                                            <th></th>
                                                            <th><span class="price-format" data-price="<%= total + totalRoom%>"></span></th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                                <div class="d-flex justify-content-sm-between mr-lg-5 ml-lg-3">
                                                    <button class="btn btn-print">In hóa đơn</button>
                                                    <form action="MainController" method="post">
                                                        <input type="hidden" name="bookingID" value="<%= roomDetail.getBookingID()%>" />
                                                        <input type="hidden" name="roomID" value="<%= roomDetail.getRoomID()%>" />
                                                        <input type="hidden" name="status" value="<%= 0%>" />
                                                        <% if (roomDetail.getStatus() == 1 || roomDetail.getStatus() == 3) { %>
                                                        <button type="submit" name="action" value="submitPayment" class="btn btn-success">Thanh toán</button>
                                                        <%} %>
                                                    </form>
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

        <!-- add service -->                                                
        <div id="addServiceBooking" class="modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm Dịch Vụ</h4>
                    </div>
                    <form action="MainController" method="post" class="form-group">
                        <div class="modal-body">
                            <div class="row justify-content-center">
                                <div class="col-12 col-md-8">
                                    <div class="form-group row">
                                        <label for="address" class="col-sm-4 col-form-label">Tên Dịch Vụ</label>
                                        <div class="col-sm-8">
                                            <select name="serviceID" class=" form-control">
                                                <%
                                                    List<ServiceDTO> listServiceBooking = (ArrayList<ServiceDTO>) request.getAttribute("LIST_SERVICE_BOOKING");
                                                    if (listServiceBooking != null) {
                                                        if (listServiceBooking.size() > 0) {
                                                            for (ServiceDTO serviceBooking : listServiceBooking) {
                                                %>
                                                <option value="<%= serviceBooking.getServiceId() %>"> <%= serviceBooking.getName() %> </option>
                                                <%
                                                            }
                                                        }
                                                    }
                                                %> 
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="numberService" class="col-sm-4 col-form-label">Số Lượng</label>
                                        <div class="col-sm-8">
                                            <input name="numberService" type="number" class="form-control" placeHolder="số lượng.." required>
                                        </div>
                                        <input type="hidden" name="bookingID" value="<%= roomDetail.getBookingID() %>"/>
                                        <input type="hidden" name="roomID" value="<%= roomDetail.getRoomID()%>" >
                                        <input type="hidden" name="status" value="<%= 1%>" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button class="btn btn-success" type="submit" name="action" value="addServiceBooking">Xác nhận</button>
                            <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- add customer -->                                                
        <div id="addCustomer" class="modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm Khách</h4>
                    </div>
                    <form action="MainController" method="post" class="form-group">
                        <div class="modal-body">
                            <div class="row justify-content-center">
                                <div class="col-12 col-md-8">
                                    <div class="form-group row">
                                        <label for="username" class="col-sm-4 col-form-label">Họ tên người thuê</label>
                                        <div class="col-sm-8">
                                            <input name="userName" type="text" class="form-control" placeHolder="Nhập tên khách hàng" required>
                                            <input type="hidden" name="roomID" value="<%= roomDetail.getRoomID()%>" >
                                            <input type="hidden" name="status" value="<%= 1%>" >
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="phonenumber" class="col-sm-4 col-form-label">Số điện thoại</label>
                                        <div class="col-sm-8">
                                            <input name="phone" type="tel" class="form-control" placeHolder="số điện thoại" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="citizennumber" class="col-sm-4 col-form-label">CCCD/CMND</label>
                                        <div class="col-sm-8">
                                            <input name="citizenNumber" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="address" class="col-sm-4 col-form-label">Địa chỉ</label>
                                        <div class="col-sm-8">
                                            <input name="address" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="address" class="col-sm-4 col-form-label">Thời gian thuê phòng</label>
                                        <div class="col-sm-8">
                                            <select name="Time" class=" form-control">
                                                <option value="1"> 1h </option>
                                                <option value="2"> 2h </option>
                                                <option value="3"> 3h </option>
                                                <option value="4"> 4h </option>
                                                <option value="5"> 5h </option>
                                                <option value="6"> 6h </option>
                                                <option value="7"> 7h </option>
                                                <option value="4"> 8h </option>
                                                <option value="5"> 9h </option>
                                                <option value="6"> 10h </option>
                                                <option value="7"> 12h </option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button class="btn btn-success" type="submit" name="action" value="addCustomer">Xác nhận</button>
                            <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- edit Room -->
        <div id="editRoom" class="modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
                <div class="modal-content modal-addRoom">
                    <div class="modal-header">
                        <h4 class="modal-title">Chỉnh sửa thông tin phòng</h4>
                    </div>
                    <form action="MainController" method="post" class="form-group">
                        <div class="modal-body">
                            <div class="row justify-content-center">
                                <div class="col-12 col-md-8">
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Mã Phòng</label>
                                        <div class="col-sm-8">
                                            <input type="text" name="roomID" readonly class="form-control-plaintext" id="staticEmail" value="<%= roomDetail.getRoomID()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="nameRoom" class="col-sm-4 col-form-label">Tên Phòng</label>
                                        <div class="col-sm-8">
                                            <input type="text" name="roomName" class="form-control" value="<%= roomDetail.getRoomName()%>" id="nameRoom" required>
                                        </div>
                                    </div>
                                    <input type="hidden" name="status" value="<%= roomDetail.getStatus()%>" >
                                    <div class="form-group row">
                                        <label for="typeofRoom" class="col-sm-4 col-form-label">Kiểu Phòng</label>
                                        <div class="col-sm-8">
                                            <select name="roomTypeID" id="typeofRoom" class="form-control">
                                                <% List<RoomTypeDTO> listRoomType = (ArrayList<RoomTypeDTO>) request.getAttribute("LIST_ROOMTYPE");
                                                    if (listRoomType != null) {
                                                        if (listRoomType.size() > 0) {
                                                            for (RoomTypeDTO roomType : listRoomType) {
                                                %>
                                                <option value="<%= roomType.getRoomTypeID()%>"><%= roomType.getTypeName()%></option>
                                                <%
                                                            }
                                                        }
                                                    }
                                                %>
                                                <% %>
                                            </select>
                                        </div>
                                    </div>                                   
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button class="btn btn-success" type="submit" name="action" value="updateRoom">Xác nhận</button>
                            <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <% String MESSAGE = (String) request.getAttribute("MESSAGE");
            if (MESSAGE != null) {
        %> 
        <div class="alert alert-success alert-dismissible fade show" id="notif">
            <i class='bx bx-message-alt-check p-1'></i>
            <strong class="mr-1">Success!</strong>
            <%= MESSAGE%> 
            <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close">
                <span><i class='bx bx-x'></i></span>
            </button>
        </div> 
        <%} %>

        <% String ERROR = (String) request.getAttribute("ERROR");
            if (ERROR != null) {
        %>
        <div class="alert alert-danger alert-dismissible fade show" id="notif">
            <i class='bx bx-message-alt-x p-1'></i>
            <strong class="mr-1">Error!</strong>
            <%= ERROR%> 
            <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close">
                <span><i class='bx bx-x'></i></span>
            </button>
        </div> 
        <%}%>
        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/2.5.0-beta.5/lightgallery.es5.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="assets/js/owner-script.js"></script>
        <script>
                    function Export2Doc(element, filename = '') {
                        var preHtml = "<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:word' xmlns='http://www.w3.org/TR/REC-html40'><head><meta charset='utf-8'><title>Export HTML To Doc</title></head><body>";
                        var postHtml = "</body></html>";
                        var html = preHtml + document.getElementById(element).innerHTML + postHtml;
                        var blob = new Blob(['\ufeff', html], {
                            type: 'application/msword'
                        });
                        var url = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(html)
                        filename = filename ? filename + '.doc' : 'document.doc';
                        var downloadLink = document.createElement("a");
                        document.body.appendChild(downloadLink);
                        if (navigator.msSaveOrOpenBlob) {
                            navigator.msSaveOrOpenBlob(blob, filename);
                        } else {
                            downloadLink.href = url;
                            downloadLink.download = filename;
                            downloadLink.click();
                        }
                        document.body.removeChild(downloadLink);
                    }
        </script>
    </body>
</html>
