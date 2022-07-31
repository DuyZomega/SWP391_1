<%-- 
    Document   : policy.jsp
    Created on : Jul 31, 2022, 4:05:27 PM
    Author     : Tuan Nguyen
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chính sách bảo mật</title>
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
                    <li class="breadcrumb-item active" aria-current="page">Chính sách bảo mật</li>

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
                        Mục đích và phạm vi thu thập
                    </a>
                    <a class="nav-link" id="v-pills-rule-2-tab" data-toggle="pill" href="#v-pills-rule-2" role="tab"
                       aria-controls="v-pills-rule-2" aria-selected="false">
                        <i class="fa fa-angle-right"></i>
                        Cam kết bảo mật an toàn thông tin cá nhân khách hàng
                    </a>
                    <a class="nav-link" id="v-pills-rule-3-tab" data-toggle="pill" href="#v-pills-rule-3" role="tab"
                       aria-controls="v-pills-rule-3" aria-selected="false">
                        <i class="fa fa-angle-right"></i>
                        Sửa đổi chính sách bảo mật thông tin
                    </a>
                </nav>
                <div class="col-8">
                    <div class="tab-content rules-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-rule-1" role="tabpanel"
                             aria-labelledby="v-pills-rule-1-tab">
                            <h5>Mục đích và phạm vi thu thập</h5>
                            <p>
                                Các thông tin mà ROH có thể thu thập từ thành viên bao gồm: email, điện thoại, tên đăng nhập, mật khẩu đăng nhập, họ tên, giới tính, ngày sinh, địa chỉ của khách hàng (thành viên), thông tin về thanh toán nếu thanh toán bằng thẻ tín dụng hoặc thẻ ghi nợ như tên chủ thẻ, số thẻ, ngày hết hạn và các thông tin cần thiết khác.
                            </p>
                            <p>
                                Đây là các thông tin mà ROH cần thành viên cung cấp bắt buộc đầy đủ và chính xác mọi thông tin khi đăng ký sử dụng dịch vụ và bên phía ROH liên hệ xác nhận khi khách hàng đăng ký sử dụng dịch vụ trên ứng nhằm đảm bảo quyền lợi cho cho người tiêu dùng.
                            </p>
                            <p>
                                Với các cuộc hội thoại được thực hiện thông qua chức năng Chat với nhà cung cấp (bao gồm nhưng không giới hạn dữ liệu dưới dạng văn bản) nhằm phục vụ cho việc trao đổi giữa người thuê và người đăng tin về hàng hóa/dịch vụ.
                            </p>
                            <p>
                                Thông tin cá nhân người dùng được thu thập, sử dụng theo quy định cụ thể tại Quy chế này, Quy chế riêng tư và Chính sách bảo mật thông tin cá nhân cũng như phù hợp với quy định của pháp luật tùy từng thời điểm.
                            </p>
                            <p>
                                Xác nhận và kiểm tra thông tin tài khoản thanh toán của khách hàng trong trường hợp khác hàng thực hiện thanh toán trực tuyến, và đồng thời hỗ trợ giải quyết các khiếu nại, tranh chấp có thể xảy ra trong quá trình giao dịch ROH.
                            </p>
                            <p>
                                Cung cấp các giải pháp nâng cấp và thay đổi giao diện hay qui trình dịch vụ nhằm phục vụ nhu cầu Khách hàng.
                            </p>
                        </div>
                        <div class="tab-pane fade" id="v-pills-rule-2" role="tabpanel" aria-labelledby="v-pills-rule-2-tab">
                            <h5>Cam kết bảo mật an toàn thông tin cá nhân khách hàng</h5>
                            <p>
                                Ban quản lý của ROH cam kết bảo mật tuyệt đối các thông tin của thành viên trong quá trình sử dụng dịch vụ tại ROH theo chính sách bảo vệ thông tin cá nhân của bên phía công ty.
                            </p>
                            <p>
                                Không bán, không sử dụng, không chuyển giao, cung cấp hay tiết lộ cho bên thứ 3 nào về thông tin cá nhân của thành viên khi chưa được sự cho phép của thành viên ngoại trừ trường hợp theo yêu cầu cung cấp thông tin thành viên của cơ quan nhà nước có thẩm quyền bằng văn bản hoặc pháp luật có quy định khác.
                            </p>
                            <p>
                                Trong trường hợp máy chủ lưu trữ thông tin bị tấn công dẫn đến mất mát dữ liệu cá nhân thành viên, ROH sẽ có trách nhiệm thông báo vụ việc cho cơ quan chức năng điều tra xử lý kịp thời và thông báo cho thành viên được biết.
                            </p>
                            <p>
                                Các việc thu thập và sử dụng thông tin cá nhân của thành viên chỉ được thực hiện khi có sự đồng ý của thành viên bằng cách đăng ký tài khoản trên ROH. Nếu xét thấy thông tin của thành viên cung cấp trên ROH là không chính xác, ROH sẽ tiến hành xem xét và hủy toàn bộ những nội dung của thành viên đó được đăng tải trên ROH.
                            </p>
                        </div>
                        <div class="tab-pane fade" id="v-pills-rule-3" role="tabpanel" aria-labelledby="v-pills-rule-3-tab">
                            <h5>Sửa đổi chính sách bảo mật thông tin</h5>
                            <p>
                                Bên phía ROH có toàn quyền chủ động chỉnh sửa chính sách bảo mật thông tin trên Website hoặc Ứng dụng vào bất kỳ thời điểm nào khi cần thiết, hoặc theo qui định của pháp luật, nhằm đảm bảo hoạt động tối ưu của dịch vụ tại ROH, và đảm bảo nghĩa vụ tôn trọng pháp luật luôn được thực thi tuyệt đối. Mọi nội dung của chính sách bảo mật thông tin, và các sửa đổi, bổ sung đối với chính sách này sẽ luôn được cập nhật và công bố trên Website và Ứng dụng của ROH, và sẽ được ghi ngày sửa đổi, cập nhật để khách hàng có thể nhận biết được nội dung mới nhất.
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
