
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
                    <li class="active">
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
                    <li>
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
                <div class="col-sm-12 my-2">
                    <div class="toggle float-left">
                        <i class='bx bx-menu'></i>
                    </div>
                    <div class="float-left">
                        <div class="dashboard_bar d-flex">
                            Quản Lý Phòng
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

    <!-- List room -->
    <div class="main-content">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                    </div>
                    <div class="col-lg-10 p-l-0">
                        <div class="page-header">
                            <div class="page-titles">
                                <div class="action justify-content-md-end">
                                    <button class="btn btn-success" data-toggle="modal" data-target="#addRoom">Thêm Phòng</button>
                                    <button class="btn btn-primary">Thêm Nhà</button>
                                    <button class="btn btn-danger">Xóa Nhà</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <section>
                    <div class="card">
                        <div class="card-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <!-- dung vong for o day -->
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home1">
                                        <i class='bx bx-home-alt-2'></i>
                                        <span>Home 1</span>
                                    </a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#home2">
                                        <i class='bx bx-home-alt-2'></i>
                                        <span>Home 2</span>
                                    </a>
                                </li>                          
                            </ul>
                            
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <!-- home1 -->
                                <div class="tab-pane active" id="home1" role="tabpanel">
                                    <div class="search">
                                        <div class="address-home">
                                            <span>Địa chỉ: <h5> 111a,Đình phong phú</h5></span>
                                        </div>
                                        <form action="#">
                                            <label>
                                                <input class="form-control" type="text" name="search" placeholder="Search...">
                                                <i class='bx bx-search-alt'></i>
                                            </label>
                                        </form>
                                    </div>
                                    <div class="row">
                                        <!-- dung vong for o day -->
                                        <div class="col-xl-3 col-lg-6 col-sm-6 my-3">
                                            <div class="card card-child">
                                                <div class="room-name">
                                                    <span>Room 1</span>
                                                    <div class="status">
                                                        <!-- dùng lệnh if -->
                                                        <span class="stt1">Trạng thái:<h6>Trống</h6></span>
                                                        <!-- <span class="stt2">Trạng thái:<h6>Đang thuê</h6></span>
                                                        <span class="stt3">Trạng thái:<h6>Đã cọc</h6></span> -->
                                                    </div>
                                                </div>
                                                <div class="card-body room-title">
                                                    <ul class="list">
                                                        <li>
                                                            <h6>Người thuê:</h6>
                                                            <span></span>
                                                        </li>                                                        
                                                        <li>
                                                            <h6>Thông tin phòng:</h6>
                                                            <span>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <h6>Số lượng dịch vụ đã sử dụng:</h6>
                                                            <span>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <h5>Giá:</h5>
                                                            <span>120,000&dstrok;</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="form-group mx-auto">
                                                    <button class="btn btn-warning" data-toggle="modal" data-target="#titleRoom">Chi Tiết</button>
                                                    <button class="btn btn-danger" data-toggle="modal" data-target="#deleteRoom">Hủy Phòng</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- home2 -->
                                <div class="tab-pane" id="home2" role="tabpanel">
                                    <div class="search">
                                        <div class="address-home">
                                            <span>Địa chỉ: <h5> Chưa có</h5></span>
                                        </div>
                                        <form action="#">
                                            <label>
                                                <input class="form-control" type="text" name="search" placeholder="Search...">
                                                <i class='bx bx-search-alt'></i>
                                            </label>
                                        </form>
                                    </div>
                                    <div class="row">
                                        <!-- dung vong for o day -->
                                        <div class="col-xl-3 col-lg-6 col-sm-6 my-3">
                                            <div class="card card-child">
                                                <div class="room-name">
                                                    <span>Room 1</span>
                                                    <div class="status">
                                                        <!-- dùng lệnh if -->
                                                        <span class="stt1">Trạng thái:<h6>Trống</h6></span>
                                                        <!-- <span class="stt2">Trạng thái:<h6>Đang thuê</h6></span>
                                                        <span class="stt3">Trạng thái:<h6>Đã cọc</h6></span> -->
                                                    </div>
                                                </div>
                                                <div class="card-body room-title">
                                                    <ul class="list">
                                                        <li>
                                                            <h5>Người thuê:</h5>
                                                            <span></span>
                                                        </li>                                                        
                                                        <li>
                                                            <h5>Dịch vụ:</h5>
                                                            <span>
                                                                
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <h5>Giá:</h5>
                                                            <span>120,000&dstrok;</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="form-group mx-auto">
                                                    <button class="btn btn-warning" data-toggle="modal" data-target="#titleRoom">Chi Tiết</button>
                                                    <button class="btn btn-danger" data-toggle="modal" data-target="#deleteRoom">Hủy Phòng</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>       
                            </div>
                            <!-- end tapnet -->
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <!-- add new Room -->
    <div id="addRoom" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content modal-addRoom">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm Phòng Mới</h4>
                </div>
                <div class="modal-body">
                    <form action="#">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="row form-group">
                                    <label for="firstname" class="col-md-5 col-form-label">Mã phòng</label>
                                    <input type="text" name="roomID" placeholder="Nhập Mã" required class="form-control col-md-7">
                                </div>
                                <div class="row form-group">
                                    <label for="firstname" class="col-md-5 col-form-label">Giá</label>
                                    <input type="text" name="price" placeholder="Giá" required class="form-control col-md-7">
                                </div>
                                <div class="row form-group">
                                    <label for="firstname" class="col-md-5 col-form-label">Mô tả</label>
                                    <textarea type="text" name="price" placeholder="Viết lý do khác ở đây" required class="form-control col-md-7" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="offset-md-1 col-md-6">
                                <div class="upload-img">
                                    <div class="custom-file col-ms-4">
                                        <label for="file-input">
                                            <i class="fas fa-upload"></i>&nbsp; Thêm ảnh phòng
                                        </label>
                                        <input type="file" id="file-input" accept="image/ png, image/ jpg" onchange="preview()" multiple>
                                        <p id="num-of-files">No file choose</p>
                                        <div id="images"></div>
                                    </div>  
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row form-group justify-content-center mt-3">
                                    <button type="submit" class="btn btn-success">Xác nhận</button>
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal" id="removeFiles">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <!-- title room -->
    <div id="titleRoom" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="content">
            <div class="modal-content modal-addRoom">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm Phòng Mới</h4>
                    <button class="close" type="button" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body container-fluid">
                    <div class="row">
                        <div class="col-12 col-md-5">
                            <div class="row">
                                <div class="col-md-6 text-md-right pb-1">
                                    <span>Mã Phòng: </span>
                                </div>
                                <div class="col-md-6">
                                    <span>004 </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 text-md-right pb-1">
                                    <span>Họ Tên Người Thuê: </span>
                                </div>
                                <div class="col-md-6">
                                    <span>Lê Minh Quân</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 text-md-right pb-1">
                                    <span>Thời gian thuê: </span>
                                </div>
                                <div class="col-md-6">
                                    <span>01/06/2022</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 text-md-right pb-1">
                                    <span>Hạn trả phòng: </span>
                                </div>
                                <div class="col-md-6">
                                    <span>02/06/2022</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 text-md-right pb-1">
                                    <span>Dịch vụ: </span>
                                </div>
                                <div class="col-md-6">
                                    <ul>
                                        <li>Ăn uống</li>
                                        <li>Cho thuê xe gắn máy</li>
                                        <li>Khác</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-7 text-lg-left">
                            <div id="lightgallery" class="row">
                                <a href="assets/img/bgd.jpg" data-exthumbimage="assets/img/bgd.jpg" data-src="assets/img/bgd.jpg" class= "col-lg-4 col-md-6 mb-4">
                                    <img src="assets/img/bgd.jpg" alt="" style="width:100%;">
                                </a>   
                                <a href="assets/img/bgd.jpg" data-exthumbimage="assets/img/bgd.jpg" data-src="assets/img/bgd.jpg" class= "col-lg-4 col-md-6 mb-4">
                                    <img src="assets/img/bgd.jpg" alt="" style="width:100%;">
                                </a>  
                                <a href="assets/img/bgd.jpg" data-exthumbimage="assets/img/bgd.jpg" data-src="assets/img/bgd.jpg" class= "col-lg-4 col-md-6 mb-4">
                                    <img src="assets/img/bgd.jpg" alt="" style="width:100%;">
                                </a>                  
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button class="btn btn-primary" type="button" data-dismiss="modal">Chỉnh sửa</button>
                    <button class="btn btn-danger" type="button" data-dismiss="modal">Thoát</button>
                </div>
            </div>
        </div>
    </div>

    <!-- remove Room -->
    <div id="deleteRoom" class="modal fade" role="dialog">
        <div class="modal-dialog " role="content">
            <div class="modal-content modal-addRoom">
                <div class="modal-header">
                    <h4 class="modal-title">Xác nhận hủy phòng</h4>
                </div>
                <div class="modal-body">
                    <form action="#">
                        <div class="row">
                            <div class="col-12">
                                <div class="row form-group">
                                    <label for="cancel" class="col-md-4 col-form-label">Lý do hủy phòng</label>
                                    <select class="form-control col-md-6" name="reason" id="">
                                        <option value="">Khách không nhận phòng</option>
                                        <option value="">Khách đổi phòng</option>
                                        <option value="">Khác</option>
                                    </select>
                                </div>
                                <div class="row form-group">
                                    <label for="firstname" class="col-md-4 col-form-label">Lý do khác</label>
                                    <textarea type="text" name="price" placeholder="Viết lý do khác ở đây" required class="form-control col-md-6" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="offset-md-2 col-md-7 d-flex">
                                <button type="submit" class="btn btn-success w-50">Xác nhận</button>
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/2.5.0-beta.5/lightgallery.es5.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.js"></script>
    <script src="assets/js/owner-script.js"></script>
</body>
</html>