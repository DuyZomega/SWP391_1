

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
                        <a href="owner-index.html">
                            <img class="logo" src="assets/img/logo2.png" alt="logo">
                        </a>
                    </div>
                    <li>
                        <a href="owner-index.html">
                            <span><i class='bx bx-tachometer'></i></span>
                            <span class="title">Tổng quan</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-room-list.html">
                            <span><i class='bx bx-home'></i></span>
                            <span class="title">Phòng</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-service.html">
                            <span><i class='bx bx-cloud-rain'></i></span>
                            <span class="title">Dịch vụ</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-history-room.html">
                            <span><i class='bx bx-history'></i></span>
                            <span class="title">Lịch sử thuê phòng</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-notification.html">
                            <span><i class='bx bx-bell'></i></span>
                            <span class="title">Gửi thông báo</span>
                        </a>
                    </li>
                    <li>
                        <a href="owner-statistical.html">
                            <span><i class='bx bx-line-chart'></i></span>
                            <span class="title">Thống kê</span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="owner-profile.html">
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
                        <div class="btn-group me-1 mb-1">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Lê Minh Quân
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="owner-profile.html"><i class='bx bx-user'></i>Tài khoản</a>
                                    <a class="dropdown-item" href="owner-notification.html"><i class='bx bx-bell'></i>Thông báo</a>
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
                                    <div class="profile-pic">
                                        <img src="assets/img/avatar.jpg" width="200"/>
                                        <div class="upload">
                                            <button class="btn btn-warning" data-toggle="modal" data-target="#uploadImg">Chi Tiết</button>                                                   
                                            <i class='bx bxs-camera-plus'></i>
                                        </div>
                                    </div>
                                    <div class="profile-name">Lê Minh Quân</div>
                                </div>
                                <div class="col-lg-8">                                
                                    <div class="profile-content">
                                        <div class="contact-infor">
                                            <div class="info-title">
                                                <h4>Thông tin cá nhân</h4>
                                            </div>
                                            <div class="info-content">
                                                <form action="#" class="form-check">
                                                    <div class="row phone-content">
                                                        <label class="contact-title col-md-5 col-sm-4 mt-3">Số điện thoại:</label>
                                                        <input type="tel" name="telphone" class="form-control col-md-5 col-sm-8 mt-2">
                                                        <span class="error-message col-md-2 mt-3">...</span>
                                                    </div>
                                                    <div class="row address-content">
                                                        <label class="contact-title col-md-5 col-sm-4 mt-3">Địa chỉ nhà:</label>
                                                        <input type="text" name="address" class="form-control col-md-5 col-sm-8 mt-2">
                                                        <span class="error-message col-md-2 mt-3">...</span>
                                                    </div>
                                                    <div class="row email-content">
                                                        <label class="contact-title col-md-5 col-sm-4 mt-3">Email:</label>
                                                        <input type="email" name="email" class="form-control col-md-5 col-sm-8 mt-2">
                                                        <span class="error-message col-md-2 mt-3">...</span>
                                                    </div>
                                                    <div class="row birthday-content">
                                                        <label class="contact-title col-md-5 col-sm-4 mt-3">Ngày/Tháng/Năm:</label>
                                                        <input type="date" name="date" class="form-control col-md-5 col-sm-8 mt-2">
                                                        <span class="error-message col-md-2 mt-3">...</span>
                                                    </div>
                                                    <div class="row gender-content">
                                                        <label class="contact-title col-md-5 col-sm-4 mt-3">Giới tính:</label>
                                                        <select name="gender" class="form-control col-md-5 col-sm-8 mt-2">
                                                            <option ></option>
                                                            <option value="1">Nam</option>
                                                            <option value="1">Nữ</option>
                                                            <option value="1">Khác</option>
                                                        </select>
                                                    </div>
                                                    <div class="row pt-3 d-flex">
                                                        <button type="submit" class="offset-3 btn btn-success">Xác nhận</button>
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
                                    <span class="error-message col-sm-3 mt-2">Mật khẩu sai!</span>
                                </div>
                                <div class="row form-group">
                                    <label class="offset-md-3 col-md-2 col-sm-3 col-form-label">Mật khẩu mới:</label>
                                    <input class="col-md-3 col-sm-5 form-control" type="password" name="newpassword" id="password" required>
                                </div>
                                <div class="row form-group">
                                    <label class="offset-md-3 col-md-2 col-sm-3 col-form-label">Xác nhận:</label>
                                    <input class="col-md-3 col-sm-5 form-control" type="password" name="confirm" id="confirm" required>
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

    <!-- edit Home -->
    <div id="uploadImg" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
            <div class="modal-content modal-addRoom">
                <div class="modal-header">
                    <h4 class="modal-title">Thay ảnh</h4>
                </div>
                <form action="#">
                    <div class="modal-body">
                        <label class="custom-control-label d-flex">
                            <input type="file" class="custom-file" accept=".jpg, .png">   
                        </label>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button class="btn btn-success" type="submit">Xác nhận</button>
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                    </div>
                </form>
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