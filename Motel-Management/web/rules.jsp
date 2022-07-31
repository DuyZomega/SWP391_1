<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Điều khoản dịch vụ</title>
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
                <li class="breadcrumb-item active" aria-current="page">Điều khoản sử dụng</li>

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
                    Lời nói đầu
                </a>
                <a class="nav-link" id="v-pills-rule-2-tab" data-toggle="pill" href="#v-pills-rule-2" role="tab"
                    aria-controls="v-pills-rule-2" aria-selected="false">
                    <i class="fa fa-angle-right"></i>
                    Quy định đăng tin với khách hàng
                </a>
                <a class="nav-link" id="v-pills-rule-3-tab" data-toggle="pill" href="#v-pills-rule-3" role="tab"
                    aria-controls="v-pills-rule-3" aria-selected="false">
                    <i class="fa fa-angle-right"></i>
                    Chúng tôi miễn trách nhiệm
                </a>
            </nav>
            <div class="col-8">
                <div class="tab-content rules-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-rule-1" role="tabpanel"
                        aria-labelledby="v-pills-rule-1-tab">
                        <h5>Lời nói đầu</h5>
                        <p>
                            Đầu tiên, chúng tôi, Công ty ROH xin chân thành cám ơn các khách hàng (thành viên) đã quan
                            tâm và có mong muốn sử dụng dịch vụ của chúng tôi. Trước khi bắt đầu truy cập ROH cũng
                            như sử dụng các dịch vụ trên trang Website và Ứng dụng,
                            <strong>Xin vui lòng đọc cẩn thận và ghi nhớ các Điều khoản Dịch vụ này</strong>
                            . Việc sử dụng hoặc truy cập vào Website và Ứng dụng ROH sẽ
                            được hiểu là sự chấp nhận và đồng ý ràng buộc vào Điều khoản Dịch vụ. Nếu khách hàng không
                            đồng ý với những ràng buộc của Điều khoản Dịch Vụ của công ty, vui lòng khách hàng không sử
                            dụng hoặc truy cập vào dịch vụ bên ROH
                        </p>
                        <p>
                            Điều khoản Dịch vụ này được ký kết bởi và giữa Công ty ROH với bất kỳ một cá nhân tổ chức
                            hoặc một cá nhân, thực thể nào khác, những người truy cập hoặc sử dụng Website và Ứng dụng
                            ROH (được gọi chung là "Người sử dụng”, "khách hàng" hoặc "bạn").
                        </p>
                        <p>
                            Website và Ứng dụng ROH kết nối trực tiếp người cho thuê và người cần thuê với nhau. Dịch
                            vụ ROH cung cấp những công cụ, tiện ích trực tuyến giúp cả người thuê và chủ cho thuê kết
                            nối với nhau. Ngoài ra, người cho thuê có thể sử dụng dịch vụ quản lý phòng/nhà bao gồm báo
                            cáo doanh thu, tổng tiền hằng tháng,… những dịch vụ quản lý đều có trong gói dịch vụ liên
                            lạc với chúng tôi. Những tiện ích của ROH sẽ được gọi chung là "Dịch vụ". Khách hàng
                            (Thành viên) hiểu và đồng ý rằng Dịch Vụ này sẽ bao gồm một số thông tin liên lạc của Công
                            ty ROH qua các phương tiện như email, SMS, Website, Ứng dụng ROH... Các thông tin liên
                            lạc này được coi là một phần không tách rời của Dịch vụ và Khách hàng (Thành viên) sẽ không
                            có khả năng từ chối nhận các thông tin này trừ khi Khách hàng chấm dứt việc sử dụng tài
                            khoản của mình trên Ứng dụng và/hoặc Website ROH
                        </p>
                        <p>
                            Nếu khách hàng có bất kỳ câu hỏi nào về việc sử dụng dịch vụ tại Website hoặc Ứng dụng
                            ROH, khách hàng vào phần Liên Hệ. Tất cả các câu hỏi, góp ý, khiếu nại, dịch vụ về
                            Website hoặc Ứng dụng của ROH sẽ được giải đáp bởi thành viên của ROH
                        </p>
                        <strong>
                            Công ty ROH (ROH) không phải là đơn vị môi giới tìm nơi thuê, cung cấp dịch vụ cho thuê.
                            Công ty chúng tôi chỉ cung cấp những dịch vụ quản lý phòng/nhà cho người cho thuê và người
                            thuê, ngoài ra chúng tôi có những công cụ để hai bên tìm kiếm kết nối với nhau.
                        </strong>
                    </div>
                    <div class="tab-pane fade" id="v-pills-rule-2" role="tabpanel" aria-labelledby="v-pills-rule-2-tab">
                        <h5>Quy định đăng tin đối với khách hàng</h5>
                        <p>
                            Về phía công ty ROH, chúng tôi có quyền biên tập lại nội dung thông tin đăng cho chính
                            xác, và đúng với những quy định đăng tin của ROH và bên phía chúng tôi có toàn quyền
                            quyết định đăng, hoặc không đăng; lưu giữ hoặc không lưu giữ thông tin của khách hàng đăng
                            trên trang Website này mà không cần phải báo trước cho khách hàng.
                        </p>
                        <p>
                            Công ty ROH chỉ nhận đăng thông tin về (nhà/nhà trọ) cho thuê, (phòng/phòng trọ) cho
                            thuê, không chịu trách nhiệm và không bảo đảm về tính chính xác của thông tin được đăng.
                            Đồng thời, không chịu bất cứ trách nhiệm pháp lý hoặc bồi thường thiệt hại nào giữa các bên
                            giao dịch tiền tệ/hàng hóa trên Website ROH.
                        </p>
                        <p>
                            Mọi thành viên, khách hàng, đối tác của ROH có trách nhiệm thường xuyên truy cập trang
                            "Điều khoản dịch vụ" này, để cập nhật các thay đổi, bổ sung (nếu có), để xác nhận và đồng ý
                            với tất cả các phần sửa đổi, bổ sung mà công ty đã công bố.
                        </p>
                    </div>
                    <div class="tab-pane fade" id="v-pills-rule-3" role="tabpanel" aria-labelledby="v-pills-rule-3-tab">
                        <h5>Chúng tôi miễn trách nhiệm</h5>
                        <p>
                            Các dịch vụ được cung cấp ROH khước từ mọi tuyên bố và bảo đảm, không được nêu rõ trong
                            những điều khoản này. Ngoài ra, ROH không đưa ra tuyên bố, bảo hành, bảo đảm về tính tin
                            cậy, tính kịp thời, chất lượng, tính phù hợp hoặc sẵn có của các dịch vụ hoặc các dịch vụ
                            này sẽ không bị gián đoạn hoặc không có lỗi. Khách hàng đồng ý chịu trách nhiệm về toàn bộ
                            rủi ro phát sinh bên ngoài việc sử dụng các dịch vụ này và bất kỳ dịch vụ được yêu cần nào
                            có liên quan, trong phạm vi tối đa pháp luật áp dụng cho phép.
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