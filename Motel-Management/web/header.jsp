<%@page import="sample.notification.NotificationDTO"%>
<%@page import="sample.users.UserDAO" %>
<%@page import="sample.users.DistrictDTO" %>
<%@page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.users.UserDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- BS4 CSS -->
    <link rel="stylesheet" href="vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css" />
    <!-- FONT -->
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap"
        rel="stylesheet" />
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css" />
    <!-- animate -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- owl carousels -->
    <link rel="stylesheet" href="./assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css" />

    <!-- main CSS -->
    <link rel="stylesheet" href="./assets/css/main.css" />
</head>
<header>

    <div
        class="header__top d-flex justify-content-between align-items-center container-fluid py-2 fixed-top">
        <div class="header__left">
            <a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="https://github.com/CTPhuongThuy/ROH.git" target="_blank"><i
                    class="fab fa-github"></i></a>
            <a href="mailto:hotelmanagement.fpt@gmail.com"
               class="text-white text-decoration-none"><i class="fa fa-envelope"></i>
                hotelmanagement.fpt@gmail.com</a>
            <a href="tel:0396421901" class="text-white mr-4 text-decoration-none"><i
                    class="fas fa-phone-alt"></i>
                039 6421 901</a>
        </div>
        <div class="header__right">

            <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                if (loginUser == null) { %>

            <a href="./login.jsp">Đăng nhập</a>

            <a href="./signup.jsp">Đăng ký</a>
            <% } else if (loginUser.getRole().equals("US")) {%>

            <%
                NotificationDTO noti = (NotificationDTO) request.getAttribute("NOTIFICATION");
                if (noti == null) {
                    noti = new NotificationDTO();
                }
            %> 
            <div class="notification-dropdown dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-bell"></i><span class="notification"><%= noti.getNotificationNumber()%></span>
                </button>
                <div class="dropdown-menu notification-table animate__animated animate__fadeInDown"
                     aria-labelledby="dropdownMenuButton">
                    <div class="dropdown-header">
                        <span class="triangle"></span>
                        <span class="heading">Thông báo</span>
                    </div>
                    <div class="dropdown-body">
                        <a class="dropdown-item" href="MainController?action=notifi&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                            <p class="truncate">Xem tin mới <i class="fa fa-angle-right"></i></p>
                        </a>
                        <a class="dropdown-item" href="MainController?action=notifi1&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                            <p class="truncate"> Xem tất cả <i class="fa fa-angle-right"></i></p>
                        </a>
                        <c:forEach var="t" items ="${requestScope.LIST_NOTI}">
                            <a class="dropdown-item" href="MainController?action=notifi1&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>"><p class="truncate">${t.title}</p></a>
                        </c:forEach>
                    </div>
                </div>
            </div>      
            <div class="user-dropdown dropdown">
                <button class="btn-user-dropdown text-white btn dropdown-toggle"
                        type="button" id="dropdownMenuButton" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    <span>Xin chào, <%= loginUser.getFullName()%></span>
                    <span><img id="profile-pic" class="img-fluid"
                               src="images/man.png"
                               alt="<%= loginUser.getFullName()%>"></span>

                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item"
                       href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                        Thông tin cá nhân</a>
                    <div class="dropdown-divider"></div><a class="dropdown-item"
                                                           href="userhistorybooking">
                        Lịch sử</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item"
                       href="MainController?action=Logout">Đăng xuất</a>
                </div>
            </div>
            <span type="hidden" name="userId" value="<%= loginUser.getUserId()%>"                
                  </div>
        </div>
    </div>
    <%} else if (loginUser.getRole().equals("OW")) {%>

    <button type="button" class="button--primary btn btn-sm">
        <a href="OwnerShowOverview" class="border-left-0 m-0 p-0">Quản lý thuê trọ</a>
    </button>
    <div class="user-dropdown dropdown">
        <button class="btn-user-dropdown text-white btn dropdown-toggle" type="button"
                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
            <span>Xin chào, <%= loginUser.getFullName()%></span>
            <span><img id="profile-pic" class="img-fluid" src="assets/img/avatar.jpg"
                       alt="avatar"></span>
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item"
               href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                Thông tin cá nhân</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="MainController?action=Logout">Đăng xuất</a>
        </div>
    </div>
</div>
</div>
<%}%>
</div>
</div>

</div>
</div>
<div class="header__bottom">
    <nav class="myNavBar navbar navbar-expand-lg navbar-dark container-fluid">
        <a class="navbar-brand" href="ShowMotelController"><img
                class="logo img-fluid" src="./assets/img/logo2-1.png"
                alt="logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="ShowAllMotelController">Danh sách
                        motel</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#services">Dịch vụ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#aboutUs">Về chúng tôi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#teamMember">Đội ngũ</a>
                </li>
            </ul>
        </div>

        <% UserDAO district = new UserDAO();
            List<DistrictDTO> listDistrict
                    = district.getListDistrict();
            if (listDistrict.size() > 0) {
                request.setAttribute("LIST_DISTRICT", listDistrict);
            }
        %>
        <div class="header__bottom__right">
            <form class="header__bottom--search d-flex"
                  action="MotelManager">

                <select class="custom-select" id="districtID"
                        name="districtID">
                    <c:if test="${requestScope.LIST_DISTRICT != null}">
                        <c:if
                            test="${not empty requestScope.LIST_DISTRICT}">

                            <c:forEach var="d" varStatus="counter"
                                       items="${requestScope.LIST_DISTRICT}">

                                <option value="${d.districtID}"> ${d.name}
                                </option>
                            </c:forEach>
                        </c:if>
                    </c:if>
                </select>
                <button type="submit" class="searchButton" name="action"
                        value="search">
                    <i class="fa fa-filter"></i>
                </button>
            </form>
        </div>
    </nav>
</div>
</header>