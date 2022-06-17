<%-- 
    Document   : header
    Created on : Jun 17, 2022, 9:33:21 AM
    Author     : cao thi phuong thuy
--%>

<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>

    <div class="header__top d-flex justify-content-between align-items-center container-fluid py-2 fixed-top">
        <div class="header__left">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="mailto:hotel.management@gmail.com" class="text-white text-decoration-none"><i
                    class="fa fa-envelope"></i> hotel.management@gmail.com</a>
            <a href="tel:0865644162" class="text-white mr-4 text-decoration-none"><i class="fas fa-phone-alt"></i>
                0865.644.162</a>
        </div>
        <div class="header__right">

            <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                if (loginUser == null) { %>

            <a href="./login.jsp">Đăng nhập</a>

            <a href="./signup.jsp">Đăng ký</a>
            <% } else if (loginUser.getRole().equals("US")) {%>


            <div class="user-dropdown dropdown">
                <button class="btn-user-dropdown text-white btn dropdown-toggle" type="button"
                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span>Xin chào, <%= loginUser.getFullName()%></span>
                    <span><img id="profile-pic" class="img-fluid" src="assets/img/avatar.jpg" alt="avatar"></span>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
                        Thông tin cá nhân</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="MainController?action=Logout">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
    <%} else if (loginUser.getRole().equals("OW")) {%>

    <button type="button" class="button--primary btn btn-sm">
        <a href="OwnerShowOverview" class="border-left-0 m-0 p-0">Quản lý thuê trọ</a>
    </button>
    <div class="user-dropdown dropdown">
        <button class="btn-user-dropdown text-white btn dropdown-toggle" type="button"
                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span>Xin chào, <%= loginUser.getFullName()%></span>
            <span><img id="profile-pic" class="img-fluid" src="assets/img/avatar.jpg" alt="avatar"></span>
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="MainController?action=ShowProfile&userID=<%=loginUser.getUserId()%>&role=<%=loginUser.getRole()%>">
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
        <a class="navbar-brand" href="#"><img class="logo img-fluid" src="./assets/img/logo2-1.png"
                                              alt="logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Về chúng tôi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ShowAllMotelController">Motel kinh doanh</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Bảng giá dịch vụ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Đội ngũ & Đối tác</a>
                </li>
            </ul>
        </div>

       <div class="header__bottom__right">
                    <form class="header__bottom--search d-flex">
                        <div class="select-box">
                            <div class="options-container">
                                <div class="option">
                                    <input type="radio" class="radio" id="tutorials" name="category" />
                                    <label for="tutorials">Tân Phú</label>
                                </div>
                                <div class="option">
                                    <input type="radio" class="radio" id="automobiles" name="category" />
                                    <label for="automobiles">Quận 1</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="film" name="category" />
                                    <label for="film">Quận 2</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="science" name="category" />
                                    <label for="science">Quận 3</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="art" name="category" />
                                    <label for="art">Quận 4</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="music" name="category" />
                                    <label for="music">Quận 5</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="travel" name="category" />
                                    <label for="travel">Quận 6</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="sports" name="category" />
                                    <label for="sports">Quận 7</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="news" name="category" />
                                    <label for="news">Quận 8</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="tutorials" name="category" />
                                    <label for="tutorials">Tân Phú</label>
                                </div>
                            </div>

                            <div class="selected">
                                <p>Chọn quận bạn muốn tìm kiếm</p>
                            </div>
                        </div>
                        <button type="submit" class="searchButton">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                </div>
    </nav>
</div>
</header>