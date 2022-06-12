<%-- 
    Document   : Login
    Created on : Jun 3, 2022, 5:13:06 PM
    Author     : Bao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <!-- BS4 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap"
        rel="stylesheet">
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
            <div class="row row-content px-3">
                <div class="col-12 col-sm-4 offset-sm-4 login">
                    <a href="index.jsp"><img src="assets/img/logo2-1.png" alt="logo"></a>
                    <h4 class="text-center">Điền thông tin đăng nhập</h4>
                    <form class="form" action="MainController" method="POST">
                        <div class="col-12">
                            <label for="userID">Tên đăng nhập</label>
                            <input type="text" name="userId" class="form-control" placeholder="userID or phone">
                             <h5 style="color:black; background-color: white">
                                 ${requestScope.ERROR}
                             </h5> 
                        </div>
                        <div class="col-12">
                            <label for="password">Mật khẩu</label>
                            <input type="password" name="password" class="form-control" placeholder="password">
                            <h5 style="color:black; background-color: white">
                                 ${requestScope.ERROR}
                            </h5>                         
                            <a href="#" class="float-end">Quên mật khẩu?</a>
                        </div>
                        <button type="submit" name="action" value="Login" class="btn btn-danger">Đăng nhập</button>
                        <button type="reset" value ="Reset" class="btn btn-success">Reset</button>
                    </form>
                    <div class="d-flex align-items-center justify-content-center pt-lg-5">
                        <p class="mb-0 me-2">Don't have an account? </p>
                        <a href="signup.jsp" class="signup"> Đăng ký.</a>
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
