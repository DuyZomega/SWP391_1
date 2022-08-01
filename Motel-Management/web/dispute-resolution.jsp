<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Giải quyết tranh chấp</title>
        <link rel="shortcut icon" href="./assets/img/logo2.png" />
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
    <body>
        <%@include file="header.jsp" %>
        <hr>
        <div class="header__breadcrumb container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="ShowMotelController" class="text-decoration-none">Trang chủ</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Giải quyết tranh chấp</li>

                </ol>
            </nav>
        </div>
        <hr>

        <section class="rules container">
            <div class="row">
                <nav class="nav nav-pills flex-column col-4">
                    <a class="nav-link active" id="v-pills-rule-1-tab" data-toggle="pill" href="#v-pills-rule-1" role="tab"
                       aria-controls="v-pills-rule-1" aria-selected="true">
                        <i class="fa fa-angle-right"></i>
                        Kênh tiếp nhận khiếu nại
                    </a>
                    <a class="nav-link" id="v-pills-rule-2-tab" data-toggle="pill" href="#v-pills-rule-2" role="tab"
                       aria-controls="v-pills-rule-2" aria-selected="false">
                        <i class="fa fa-angle-right"></i>
                        Quy trình tiếp nhận và xử lý khiếu nại, tranh chấp
                    </a>
                    <a class="nav-link" id="v-pills-rule-3-tab" data-toggle="pill" href="#v-pills-rule-3" role="tab"
                       aria-controls="v-pills-rule-3" aria-selected="false">
                        <i class="fa fa-angle-right"></i>
                        Cam kết của ROH dành cho khách hàng
                    </a>
                </nav>
                <div class="col-8">
                    <div class="tab-content rules-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-rule-1" role="tabpanel"
                             aria-labelledby="v-pills-rule-1-tab">
                            <h5>Kênh tiếp nhận khiếu nại</h5>
                            <p>
                                Khi có bất kỳ khiếu nại, tranh chấp nào xảy ra liên quan đến sản phẩm hoặc dịch vụ, khách hàng vui lòng thông báo cho chúng tôi trong thời gian sớm nhất. ROH cam kết sẽ có trách nhiệm tiếp cận và hỗ trợ khách hàng để giải quyết mọi khiếu nại, tranh chấp đó trên cơ sở khách quan dựa trên thỏa thuận và quy định pháp luật. Chúng tôi luôn đề cao cách thức giải quyết hòa giải, thương lượng giữa các bên nhằm duy trì mối quan hệ tốt đẹp và sự tin tưởng của khách hàng vào các dịch vụ trên ROH                            
                            </p>
                            <p>
                                Cách 1: Khách hàng gọi điện thoại đến hỗ trợ <a href="tel:+84396421901">039.6421.901</a>                          
                            </p>
                            <p>
                                Cách 2: Khách hàng gửi email đến địa chỉ <a href="mailto:hotelmanagement.fpt@gmail.com">hotelmanagement.fpt@gmail.com</a>
                            </p>
                        </div>
                        <div class="tab-pane fade" id="v-pills-rule-2" role="tabpanel" aria-labelledby="v-pills-rule-2-tab">
                            <h5>Quy trình tiếp nhận và xử lý khiếu nại, tranh chấp</h5>
                            <p>
                                Bước 1: Khách hàng liên hệ với ROH qua hỗ trợ <a href="tel:+84396421901">039.6421.901</a> hoặc gửi email đến địa chỉ <a href="mailto:hotelmanagement.fpt@gmail.com">hotelmanagement.fpt@gmail.com</a>.                           
                            </p>
                            <p>
                                Bước 2: Bộ phận Chăm sóc khách hàng của ROH sẽ tiếp nhận khiếu nại của khách hàng. Tùy theo tính chất và mức độ của khiếu nại, chúng tôi sẽ có những quy trình cụ thể hỗ trợ khách hàng để giải quyết tranh chấp đó không quá 7 ngày làm việc từ khi tiếp nhận khiếu nại.                            
                            </p>
                            <p>
                                Bước 3: ROH có quyền yêu cầu khách hàng cung cấp các thông tin, bằng chứng liên quan đến giao dịch và làm rõ sự việc, từ đó có hướng giải quyết phù hợp. Mọi tranh chấp phát sinh sẽ được ưu tiên giải quyết thông qua đàm phán, thương lượng.
                            </p>
                        </div>
                        <div class="tab-pane fade" id="v-pills-rule-3" role="tabpanel" aria-labelledby="v-pills-rule-3-tab">
                            <h5>Cam kết của ROH dành cho khách hàng</h5>
                            <p>
                                Mọi thông tin mà khách hàng cung cấp trong suốt quá trình sử dụng dịch vụ sẽ được bảo mật tuyệt đối, không chuyển giao cho bên thứ ba nào khác, trừ trường hợp buộc phải cung cấp khi Cơ quan pháp luật yêu cầu.
                            </p>
                            <p>
                                Trong trường hợp có bất cứ sự cố nào phát sinh trong quá trình sử dụng dịch vụ như lỗi hóa đơn, lỗi tin nhắn, thông báo, hợp đồng, ... ROH sẽ cố gắng hỗ trợ khách hàng.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
        <!-- thư viện hỗ trợ -->
        <script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer">
        </script>
        <!-- Jquery Waypoint -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js">
        </script>
        <!-- BS4 JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.5/umd/popper.min.js">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js">
        </script>

    </body>
</html>
