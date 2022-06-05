

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
                    <li>
                        <a href="owner-index.jsp">
                            <span><i class='bx bx-tachometer'></i></span>
                            <span class="title">Tổng quan</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-room-list.jsp">
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
                    <li class="active">
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
                            Tài Khoản
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

    <div class="main-content">
        <div id="accordion">
            <!-- Thông tin cá nhân -->
            <div class="card mx-5 mb-2">
                <div class="card-header card-setting" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                            aria-expanded="true" aria-controls="collapseOne">
                            Hồ sơ của tôi <i class='bx bx-chevron-right'></i>
                        </button>
                    </h5>
                </div>
                <div class="collapse" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <div class="user-profile">
                            <div class="row">
                                <div class="col-lg-4">

                                    <div class="profile-pic" onmouseover="profileAvat()">
                                        <label class="label" for="file" >
                                            <i class='bx bxs-camera-plus'></i>
                                            Thay ảnh đại diện
                                        </label>
                                        <input id="file" type="file" onchange="loadFile(event)"/>
                                        <img src="assets/img/avatar.jpg" id="output" width="200" />
                                        
                                    </div>
                                    <div class="user-profile-name">Lê Minh Quân</div>
                                    
                                </div>
                                <div class="col-lg-8">                                
                                    <div class="custom-tab user-profile-tab">
                                        <div class="tab-content">
                                            <div class="contact-information">
                                                <div class="info-title">
                                                    <h4>Thông tin cá nhân</h4>
                                                </div>
                                                <div class="info-content">
                                                    <form action="#" class="form-check">
                                                        <div class="row phone-content">
                                                            <span class="contact-title col-md-3 col-sm-4 mt-3">Số điện thoại:</span>
                                                            <input type="tel" name="telphone" class="form-control col-md-5 col-sm-8 mt-2">
                                                        </div>
                                                        <div class="row address-content">
                                                            <span class="contact-title col-md-3 col-sm-4 mt-3">Địa chỉ nhà:</span>
                                                            <input type="tel" name="telphone" class="form-control col-md-5 col-sm-8 mt-2">
                                                        </div>
                                                        <div class="row email-content">
                                                            <span class="contact-title col-md-3 col-sm-4 mt-3">Email:</span>
                                                            <input type="tel" name="telphone" class="form-control col-md-5 col-sm-8 mt-2">
                                                        </div>
                                                        <div class="row birthday-content">
                                                            <span class="contact-title col-md-3 col-sm-4 mt-3">Ngày/Tháng/Năm:</span>
                                                            <input type="tel" name="telphone" class="form-control col-md-5 col-sm-8 mt-2">
                                                        </div>
                                                        <div class="row gender-content">
                                                            <span class="contact-title col-md-3 col-sm-4 mt-3">Giới tính:</span>
                                                            <input type="tel" name="telphone" class="form-control col-md-5 col-sm-8 mt-2">
                                                        </div>
                                                        <div class="row pt-3 d-flex justify-content-center">
                                                            <button type="submit" class="btn btn-success">Xác nhận</button>
                                                        </div>
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
            <!--Change password -->
            <div class="card mx-5 mb-2">
                <div class="card-header card-setting" id="headingTwo">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                            aria-expanded="false" aria-controls="collapseTwo">
                            Thay đổi mật khẩu <i class='bx bx-chevron-right'></i>
                        </button>
                    </h5>
                </div>
                <div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordion">
                    <div class="card-body">
                        <div class="card-group d-block">
                            <form action="#" method="post">
                                <div class="row form-group">
                                    <label class="offset-md-3 col-md-2 col-sm-3 col-form-label">Mật khẩu cũ:</label> 
                                    <input class="col-md-3 col-sm-5 form-control" type="password" name="oldpassword" required>
                                </div>
                                <div class="row form-group">
                                    <label class="offset-md-3 col-md-2 col-sm-3 col-form-label">Mật khẩu mới:</label>
                                    <input class="col-md-3 col-sm-5 form-control" type="password" name="newpassword" required>
                                </div>
                                <div class="row form-group">
                                    <label class="offset-md-3 col-md-2 col-sm-3 col-form-label">Xác nhận:</label>
                                    <input class="col-md-3 col-sm-5 form-control" type="password" name="confirmpassword" required>
                                </div>
                                <div class="row form-group justify-content-center">
                                    <button type="submit" class="btn btn-success">Thay đổi</button>
                                </div>
                            </form>
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