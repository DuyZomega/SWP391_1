
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.room.RoomDTO"%>
<%@page import="sample.users.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sample.motel.MotelDTO"%>
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

        <div class="profile container">
            <div class="row">
                <div class="navigation col-2">
                    <ul class="slide-menu">
                        <li>
                            <a href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                                <span><i class='bx bx-user'></i></span>
                                <span class="title">Tài khoản</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">
                                <span><i class='bx bx-bell'></i></span>
                                <span class="title">Thông báo</span>
                            </a>
                        </li>
                        <li>
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

                                                    <table id="notification-table"
                                                           class="table table-striped table-bordered">

                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>Ngày thông báo</th>
                                                                <th>Nội dung</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody> 
                                                            <%
                                                                List<NotificationDTO> listNotification = (ArrayList<NotificationDTO>) request.getAttribute("LIST_NOTI");
                                                                for (NotificationDTO notifi : listNotification) {
                                                            %>
                                                            <tr>
                                                                <td>
                                                                    <%= notifi.getAnnouncementID()%>
                                                                </td>
                                                                <td>
                                                                    <%= notifi.getDate()%>
                                                                </td>
                                                                <td>
                                                                    <%= notifi.getTitle()%>
                                                                </td>
                                                            </tr> 
                                                            <%}
                                                            %>                                                      
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

        <!-- FOOTER -->

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
                $("#notification-table").DataTable({
                    pagingType: "full_numbers",
                });
            });
        </script>
    </body>

</html>