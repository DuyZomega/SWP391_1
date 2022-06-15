<%-- 
    Document   : owner-motel
    Created on : Jun 15, 2022, 2:30:12 AM
    Author     : Bao
--%>

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
                        <a href="owner-index.jsp">
                            <img class="logo" src="assets/img/logo2.png" alt="logo">
                        </a>
                    </div>
                    <li data-toggle="tooltip"data-placement="right" title="Tổng quan">
                        <a href="owner-index.jsp">
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
                            <li class="active" data-toggle="tooltip"data-placement="right" title="Quản lý nhà">
                                <a href="owner-motel.jsp" li class="dropdown-item">
                                    <i class='bx bx-home-alt-2'></i>
                                    <span class="title">Nhà nghỉ</span>
                                </a> 
                            </li>
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý phòng">
                                <a href="owner-room-list.jsp" li class="dropdown-item">
                                    <i class='bx bx-calendar-edit'></i>
                                    <span class="title">Phòng</span>
                                </a>
                            </li> 
                            <li data-toggle="tooltip"data-placement="right" title="Quản lý dịch vụ">
                                <a href="owner-service.jsp" li class="dropdown-item">
                                    <i class='bx bx-cloud-rain'></i>
                                    <span class="title">Dịch vụ</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Lịch sử">
                        <a href="owner-history-room.jsp">
                            <span><i class='bx bx-history'></i></span>
                            <span class="title">Lịch sử thuê phòng</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Thông báo">
                        <a href="owner-notification.jsp">
                            <span><i class='bx bx-bell'></i></span>
                            <span class="title">Thông báo</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Nhận xét">
                        <a href="owner-feedback.jsp">
                            <span><i class="bx bx-detail"></i></span>
                            <span class="title">Nhận xét</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Thống kê">
                        <a href="owner-statistical.jsp">
                            <span><i class='bx bx-line-chart'></i></span>
                            <span class="title">Thống kê</span>
                        </a>
                    </li>
                    <li data-toggle="tooltip"data-placement="right" title="Tài khoản">
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
                            Quản Lý Nhà
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

    <!-- List room -->
    <div class="main-content">
        <div class="main">
            <div class="container-fluid">
                    <!-- <div class="page-header">
                        <div class="edit-home">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#addHome">Thêm Nhà</button>
                            <button class="btn btn-success" data-toggle="modal" data-target="#editHome">Sửa Nhà</button>
                            <button class="btn btn-danger" data-toggle="modal" data-target="#deleteHome">Xóa Nhà</button>
                        </div>
                    </div> -->
                <div class="row">
                    <div class="offset-sm-6 col-sm-6 d-flex justify-content-sm-end p-md-0 mt-2 mt-sm-0 ">
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
            </div>
        </div>
    </div>

    <!-- add Home -->
    <div id="addHome" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm Nhà</h4>
                </div>
                <form action="#" >
                    <div class="modal-body container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-md-2 text-md-right"><span>Tỉnh:</span></div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <select name="" class="form-control" id="sel1" onchange="giveSelection(this.value)">
                                                <option value="1">Sơn La</option>
                                                <option value="2">Điện Biên</option>
                                                <option value="3">Lai Châu</option>
                                                <option value="4">Bắc Giang</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-md-right"><span>Huyện: </span></div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <select name="" class="form-control" id="sel2">
                                                <option value="1">Sơn La</option>
                                                <option value="2">Điện Biên</option>
                                                <option value="3">Lai Châu</option>
                                                <option value="4">Bắc Giang</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 text-md-right pb-1"><span>Tên Phòng Motel: </span></div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <input type="tel" class="form-control" placeholder="Nhập tên..." required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 text-md-right pb-1"><span>Điện thoại: </span></div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <input type="tel" class="form-control" placeholder="Nhập số điện thoại..." required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 text-md-right pb-1"><span>Địa chỉ: </span></div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Nhập địa chỉ..." required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="offset-md-2 col-md-8 upload-img">
                                        <div class="custom-file col-ms-4">
                                            <label for="file-input">
                                                <i class="fas fa-upload"></i>&nbsp; Thêm ảnh phòng
                                            </label>
                                            <input type="file" id="file-input" accept="image/*" onchange="preview()" multiple>
                                            <p id="num-of-files">No file choose</p>
                                            <div id="images"></div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button class="btn btn-success" type="submit">Xác Nhận</button>
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- edit Home -->
    <div id="editHome" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="content">
            <div class="modal-content modal-addRoom">
                <div class="modal-header">
                    <h4 class="modal-title">Chỉnh sửa thông tin Nhà</h4>
                </div>
                <form action="#" class="form-group">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12  ">
                                <div class="row form-group">
                                    <label for="idhome" class="col-md-3 col-form-label text-md-right">Mã nhà:</label>
                                    <input type="text" name="idhome" id="idhome" value="----" class="form-control col-md-6" readonly/>
                                </div>
                                <div class="row form-group">
                                    <label for="namehome" class="col-md-3 col-form-label text-md-right">Chọn Nhà:</label>
                                    <select class="form-control col-md-6" name="namehome" onchange="change(event)">
                                        <option disabled selected>Chọn nhà cần chỉnh sửa</option>
                                        <option value="1">Home 1</option>
                                        <option value="2">Home 2</option>
                                    </select>
                                </div>
                                <div class="row form-group">
                                    <label for="namehome" class="col-md-3 col-form-label text-md-right">Tên Nhà Mới:</label>
                                    <input class="form-control col-md-6" name="namehome" placeholder="Nhập tên nhà mới..." required>       
                                </div>
                                <div class="form-group row">
                                    <label for="typeofRoom" class="col-sm-4 col-form-label text-sm-right">Kiểu Phòng</label>
                                    <div class="col-sm-6">
                                        <select name="#" id="typeofRoom" class="form-control">
                                            <option value="" disabled selected>Luxury</option>
                                            <option value="">Luxury</option>
                                            <option value="">Normal</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword" class="col-sm-4 col-form-label text-sm-right">Mô tả</label>
                                    <div class="col-sm-6">
                                        <textarea type="text" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button class="btn btn-success" type="submit">Xác nhận</button>
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Hủy</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- remove Home -->
    <div id="deleteHome" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="content">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Xoá nhà</h4>
                </div>
                <form action="#">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="row form-group">
                                    <label for="idhome" class="col-md-3 col-form-label text-md-right">Mã nhà</label>
                                    <input type="text" name="idhome" id="idhome" value="----" class="form-control col-md-7" readonly/>
                                </div>
                                <div class="row form-group">
                                    <label for="idhome" class="col-md-3 col-form-label text-md-right">Tên Nhà</label>
                                    <select class="form-control col-md-7" name="namehome" onchange="change(event)">
                                        <option disabled selected>Chọn Nhà</option>
                                        <option value="1">Home 1</option>
                                        <option value="2">Home 2</option>
                                    </select>
                                </div>
                                <div class="row form-group">
                                    <label for="cancel" class="col-md-3 col-form-label text-md-right">Lý do xóa</label>
                                    <select class="form-control col-md-7" name="pageSelector" onchange="other(event)">
                                        <option value="1">Khách không nhận phòng</option>
                                        <option value="2">Khách đổi phòng</option>
                                        <option value="custom">Khác</option>
                                    </select>
                                    <textarea type="text" id="otherid" class="offset-md-3 form-control col-md-7 mt-2" style="display: none;"
                                     placeholder="Viết lý do khác ..." required></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button class="btn btn-success" type="submit">Xác Nhận</button>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/2.5.0-beta.5/lightgallery.es5.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="assets/js/owner-script.js"></script>
</body>
</html>
