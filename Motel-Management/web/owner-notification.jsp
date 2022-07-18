

<%@page import="sample.notification.NotificationDTO"%>
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
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <!--Boxicons-->
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/owner-style.css">
    </head>
    <body>
        <!-- sidebar -->
        <div class="sidebar">
            <div class="container">
                <div class="navigation">  
                    <ul class="slide-menu">
                        <div class="logo">
                            <a href="index.jsp">
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
                        <li class="active" data-toggle="tooltip"data-placement="right" title="Thông báo">
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
                                Thông báo
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
                                        <a class="dropdown-item" href="owner-notification.html"><i class='bx bx-bell'></i>Thông báo</a>
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

        <!-- Main Content -->
        <div class="main-content">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="notification">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                                <a href="#readNotif" class="nav-link active" data-toggle="tab">
                                                    <i class='bx bx-notification'></i>
                                                    Thông báo mới
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane fade show active" id="readNotif" >
                                                <div class="pt-lg-2">
                                                    <div id="all-tip">
                                                        <a href="#" data-toggle="tooltip" data-placement="right" title="Xác nhận">

                                                            <i class='bx bx-task'></i>
                                                        </a>
                                                        <a href="#" data-toggle="tooltip" data-placement="right" title="Không xác nhận">
                                                            <i class='bx bx-task-x'></i>
                                                        </a>
                                                        <a href="#" data-toggle="tooltip" data-placement="right" title="Xóa">
                                                            <i class='bx bxs-box'></i>
                                                        </a>
                                                    </div>
                                                    <div class="table-responsive pt-5">
                                                        <table class="table table-responsive-md table-borderless notif-details">

                                                            <thead>
                                                                <tr>
                                                                    <th>
                                                                        <div class="custom-control custom-checkbox mr-3 d-inline-flex">
                                                                            <input type="checkbox" class="custom-control-input" id="checkAll" required="">
                                                                            <label class="custom-control-label" for="checkAll"></label>
                                                                        </div>     
                                                                    </th>
                                                                    <th>Tên Khách</th>
                                                                    <th>Nội dung</th>
                                                                    <th>Trạng thái</th>
                                                                    <th>Ngày</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <%
                                                                        List<NotificationDTO> listNotification = (ArrayList<NotificationDTO>) request.getAttribute("LIST_NOTI");
                                                                        for (NotificationDTO notifi : listNotification) {
                                                                    %>
                                                                    <td>
                                                                        <div class="custom-control custom-checkbox checkbox-success mr-3">
                                                                            <input type="checkbox" class="custom-control-input" id="check1" required="">
                                                                            <label class="custom-control-label" for="check1"></label>
                                                                        </div>
                                                                    </td>
                                                                    <td><%= notifi.getFullname()%></td>
                                                                    <td> 
                                                                        <form action="#">
                                                                            <span><%= notifi.getTitle()%></span>
                                                                            <div class="mr-2">
                                                                                <a href="MainController?action=ownerno&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>" class="btn btn-success confirm">Xác nhận</a>
                                                                                <a href="MainController?action=ownerno1&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>" class="btn btn-danger unconfirm">Chưa nhận</a>
                                                                            </div>
                                                                        </form> 
                                                                    </td>
                                                                    <td><%= notifi.getDesct()%></td>
                                                                    <td><%= notifi.getDate()%></td>  
                                                            <c:if test="${requestScope.LIST_NOTI != null}">
                                                                <c:if test="${not empty requestScope.LIST_NOTI}">

                                                                    <c:forEach var="o" varStatus="counter" items="${requestScope.LIST_NOTI}">
                                                                        <span type="hidden" name="announcementID" value="${o.announcementID}"></span>  
                                                                    </c:forEach>
                                                                </c:if>
                                                            </c:if>
                                                            </tr>
                                                            <%}
                                                            %> 
                                                            </tbody>

                                                        </table>
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
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="assets/js/owner-script.js"></script>
    </body>
</html>