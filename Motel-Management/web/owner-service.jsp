

<%@page import="sample.motel.MotelDTO"%>
<%@page import="sample.service.ServiceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sample.users.UserDTO"%>
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
                    <ul class="slide-menu">
                        <div class="logo">
                            <a href="MainController?action=ShowOverview">
                                <img class="logo" src="assets/img/logo2.png" alt="logo">
                            </a>
                            <%
                                UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                                if (loginUser == null || !loginUser.getRole().equals("OW")) {
                                    response.sendRedirect("login.jsp");
                                    return;
                                }
                            %>
                        </div>
                        <li data-toggle="tooltip"data-placement="right" title="Tổng quan">
                            <a href="MainController?action=ShowOverview">
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
                                    <a href="MainController?action=ownerShowMotel" li class="dropdown-item">
                                        <i class='bx bx-home-alt-2'></i>
                                        <span class="title">Nhà nghỉ</span>
                                    </a> 
                                </li>
                                <li data-toggle="tooltip"data-placement="right" title="Quản lý phòng">
                                    <a href="MainController?action=ShowRoom&ownerID=<%=loginUser.getUserId()%>" li class="dropdown-item">
                                        <i class='bx bx-calendar-edit'></i>
                                        <span class="title">Phòng</span>
                                    </a>
                                </li> 
                                <li class="active" data-toggle="tooltip"data-placement="right" title="Quản lý dịch vụ">
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
                                Quản lý dịch vụ
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
                                        <a class="dropdown-item" href="MainController?action=notify"><i class='bx bx-bell'></i>Thông báo</a>
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
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="offset-sm-6 col-sm-6 d-flex justify-content-sm-end p-md-0 mt-sm-0">
                            <ol class="breadcrumb">
                                <li class="breadcrumd-item">
                                    <a href="#">Quản lý</a>
                                </li>
                                <li class="breadcrumd-item">
                                    <span>/</span>
                                </li>
                                <li class="breadcrumd-item active">
                                    <a href="owner-motel.html">Nhà</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="card service-list">
                        <div class="card-header d-sm-flex d-block">
                            <div class="mr-auto mb-sm-0 mb-3">
                                <h4 class="card-title mb-2">Dịch vụ</h4>
                                <span></span>
                            </div>
                            <button class="btn btn-info" data-toggle="modal" data-target="#addService"><i class='bx bx-plus-medical'></i>Thêm dịch vụ</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table dataTable" role="grid" id="myService">
                                    <thead>
                                    <th>#</th>
                                    <th>Mã dịch vụ</th>
                                    <th>Tên dịch vụ</th>
                                    <th>Motel</th>
                                    <th>Giá tiền</th>
                                    <th style="width: 100px;">Action</th>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<ServiceDTO> listService = (ArrayList<ServiceDTO>) request.getAttribute("LIST_SERVICE");
                                            if (listService != null) {
                                                if (listService.size() > 0) {
                                                    int count = 0;
                                                    for (ServiceDTO service : listService) {
                                                        count++;

                                        %>
                                        <tr>
                                    <form action="MainController" method="post"> 
                                        <td><%= count%></td>
                                        <input type="hidden" name="serviceID" value="<%=service.getServiceId()%>"/>
                                        <td><%= service.getServiceId()%></td>
                                        <td><input type="text" class="form-control w-auto" name="serviceName" value="<%= service.getName()%>" id="input" required/></td>
                                        <td><%= service.getMotelID()%></td> 
                                        <td><input type="text" class="form-control w-auto" name="price" value="<%= service.getPrice()%>" id="input" required/></td>
                                        <td>
                                            <div class="d-flex action-button">
                                                <button name="action" value="updateService" type="submit" class="btn btn-info btn-xs light px-2" 
                                                        data-toggle="tooltip" data-placement="right" title="Cập nhật" >
                                                    <i class='bx bx-upload'></i>
                                                </button>

                                                <a class="btn btn-danger btn-xs light px-2 ml-3" onclick="confirmdele()"
                                                   href="MainController?action=deleteService&serviceID=<%=service.getServiceId()%>"
                                                   data-toggle="tooltip" data-placement="right" title="Xóa">
                                                    <i class='bx bx-block'></i>
                                                </a>
                                            </div>
                                        </td>
                                    </form> 
                                    </tr>
                                    <%            }
                                            }
                                        }
                                    %> 
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- add Home -->
        <div id="addService" class="modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm Dịch Vụ</h4>
                    </div>
                    <form action="MainController" method="post" >
                        <div class="modal-body container-fluid">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-md-3 text-md-right"><span>Motel :</span></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="hidden" name="motelID" id="idhome" value="">
                                                <select name="motelID" class="form-control" id="sel1" onchange="change(event)" required>
                                                    <option value="" disabled selected>Chọn motel cần thêm dịch vụ</option>
                                                    <%
                                                        List<MotelDTO> listMotel = (ArrayList<MotelDTO>) request.getAttribute("LIST_MOTEL");
                                                        if (listMotel != null) {
                                                            if (listMotel.size() > 0) {
                                                                for (MotelDTO motel : listMotel) {

                                                    %>
                                                    <option value="<%= motel.getMotelID()%>"><%= motel.getName()%></option>
                                                    <%            }
                                                            }
                                                        }
                                                    %> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 text-md-right pb-1"><span>Tên Dịch Vụ: </span></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input name="serviceName" type="text" class="form-control" placeholder="Nhập tên..." required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 text-md-right pb-1"><span>Giá: </span></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input name="price" type="text" class="form-control" placeholder="Nhập giá..." required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button class="btn btn-success" name="action" value="createService" type="submit">Xác Nhận</button>
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
            <%= MESSAGE %> 
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
            <%= ERROR %> 
            <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close">
                <span><i class='bx bx-x'></i></span>
            </button>
        </div> 
        <%}%>
        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="assets/js/owner-script.js"></script>
    </body>
</html>