<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <!-- BS4 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
        integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- CSS -->
    <link rel="stylesheet" href="./assets/css/main.css">


</head>

<body>
    <div class="background">
        <div class="container">
            <div class="row" action="CreateUserController ">
                <div class="col-lg-6 offset-lg-3 p-lg-0">
                    <div class="login row">
                        <div class="col-12 text-center">
                            <a href="./index.jsp"><img src="./assets/img/logo2-1.png" alt="logo"></a>
                            <h4 class="text-center">Thông tin đăng ký</h4>
                        </div>
                        <div class="form col-12 px-5">
                            <form class="row" action="CreateUserController">
                                <div class="form-item col-12">
                                    <label for="name">Họ và tên</label>
                                    <input type="text"  placeholder="fullName" class="form-control" >
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.USER_ERROR.getFullNameError()}
                                    </h5>     
                                </div>
                                <div class="form-item col-12">
                                    <label for="userId">Tên đăng nhập</label>
                                    <input type="text"  placeholder="userId" class="form-control" >
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.USER_ERROR.getUserIdError()}
                                    </h5>  
                                </div>
                                <div class="form-item col-12">
                                    <label for="gmail">Gmail</label>
                                    <input type="text"  placeholder="gmail" class="form-control" >
                                </div>
                                <div class="form-item col-12">
                                    <label for="telephone">Số điện thoại</label>
                                    <input type="text"  placeholder="phone" class="form-control" >
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.USER_ERROR.getPhoneError()}
                                    </h5>  
                                </div>
                                    <input type="hidden" name="status" value="US"/>
                                <div class="form-item col-12">
                                    <label for="password">Mật khẩu</label>
                                    <input type="password"  placeholder="password" class="form-control" >
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.USER_ERROR.getPasswordError()}
                                    </h5>  
                                </div>
                                    <input type="hidden" name="status" value="US"/>
                                <div class="form-item col-12">
                                    <label for="confirm-password">Nhập lại mật khẩu</label>
                                    <input type="password"  placeholder="confirm" class="form-control">
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.USER_ERROR.getConfirmpasswordError()}
                                    </h5> 
                                </div>
                                <div class="btn-group btn-group-toggle col-12 offset-md-3 col-md-6 pt-3" data-toggle="buttons">
                                    <label class="btn btn-success active">
                                      <input type="radio" name="role" value="US" checked> Người thuê
                                    </label>
                                    <label class="btn btn-danger">
                                      <input type="radio" name="role" value="OW"> Chủ trọ
                                    </label>
                                  </div>
                                <div class="button col-12">
                                    <button type="submit" value="Create" class="btn btn-danger">Đăng ký</button>
                                </div>
                            </form>
                            <div class="text-center mt-3">
                                <label class="mb-0 me-2">Bạn đã có tài khoản? </label>
                                <span><a href="./login.jsp" class="signup text-primary">Đăng nhập</a> ở
                                    đây</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- thư viện hỗ trợ -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
    <!-- BS4 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>