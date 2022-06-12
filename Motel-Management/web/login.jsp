<%-- 
    Document   : Login
    Created on : Jun 3, 2022, 5:13:06 PM
    Author     : Bao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="shortcut icon" href="./assets/img/logo2.png">
    <!-- BS4 CSS -->
    <link rel="stylesheet" href="vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
    <!-- FONT -->
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap"
        rel="stylesheet">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css">


    <!-- CSS -->
    <link rel="stylesheet" href="./assets/css/main.css">
</head>

<body>
    <div class="background">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 p-lg-0">
                    <div class="login row">
                        <div class="col-12 text-center">
                            <a href="index.html"><img src="assets/img/logo2-1.png" alt="logo"></a>
                            <h4 class="text-center my-3">Điền thông tin đăng nhập</h4>
                        </div>
                        <div class="col-12 px-5">
                            <form class="form">
                                <div class="form-item input-field col-12">
                                    <label for="userID">Tên đăng nhập</label>
                                    <input type="text" name="userId" class="form-control" placeholder="userID or phone">
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.ERROR}
                                    </h5> 
                                </div>
                                <div class="form-item input-field col-12">
                                    <label for="password">Mật khẩu</label>
                                    <input type="password" name="password" class="form-control" placeholder="password">
                                    <h5 style="color:black; background-color: white">
                                        ${requestScope.ERROR}
                                    </h5>                         
                                    <a href="#" class="float-end">Quên mật khẩu?</a>
                                </div>
                                <button type="submit" name="action" value="Login" class="btn-signup btn btn-danger">Đăng nhập</button>
                                <button type="reset" value ="Reset" class="btn btn-success">Reset</button>
                            </form>
                            <div class="d-flex align-items-center justify-content-center pt-lg-5">
                                <p class="mb-0 me-2">Don't have an account? </p>
                                <a href="signup.html" class="signup"> Đăng ký.</a>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <!-- Jquery Waypoint -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <!-- BS4 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.5/umd/popper.min.js"></script>
    <script src="vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
    <!-- main js -->
    <script src="assets/js/user-script.js"></script>
</body>

</html>
