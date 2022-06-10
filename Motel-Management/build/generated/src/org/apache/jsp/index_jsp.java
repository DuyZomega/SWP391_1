package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import sample.room.RoomDTO;
import sample.users.UserDTO;
import java.util.List;
import java.util.ArrayList;
import sample.motel.MotelDTO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }
 
  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <title>Home</title>\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"./assets/img/logo2.png\">\r\n");
      out.write("        <!-- BS4 CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("              integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\r\n");
      out.write("        <!-- FONT -->\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap\"\r\n");
      out.write("            rel=\"stylesheet\">\r\n");
      out.write("        <!-- FONT AWESOME -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css\"\r\n");
      out.write("              integrity=\"sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==\"\r\n");
      out.write("              crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("        <!-- owl carousels -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/owl.carousel.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/owl.theme.default.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- main CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/main.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- HEADER -->\r\n");
      out.write("        <header>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"header__top d-flex justify-content-between align-items-center container-fluid py-2 fixed-top\">\r\n");
      out.write("                <div class=\"header__left\">\r\n");
      out.write("                    <a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fab fa-twitter\"></i></a>\r\n");
      out.write("                    <a href=\"mailto:hotel.management@gmail.com\" class=\"text-white text-decoration-none\"><i\r\n");
      out.write("                            class=\"fa fa-envelope\"></i> hotel.management@gmail.com</a>\r\n");
      out.write("                    <a href=\"tel:0865644162\" class=\"text-white mr-4 text-decoration-none\"><i class=\"fas fa-phone-alt\"></i>\r\n");
      out.write("                        0865.644.162</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"header__right\">\r\n");
      out.write("                    <button type=\"button\" class=\"button--primary btn btn-sm\">\r\n");
      out.write("                        <a href=\"#\" class=\"border-left-0 m-0 p-0\">Quản lý thuê trọ</a>\r\n");
      out.write("                    </button>\r\n");
      out.write("\r\n");
      out.write("                    <a href=\"./login.jsp\">Đăng nhập</a>\r\n");
      out.write("\r\n");
      out.write("                    <a href=\"./signup.jsp\">Đăng ký</a>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"header__bottom\">\r\n");
      out.write("                <nav class=\"myNavBar navbar navbar-expand-lg navbar-dark container-fluid\">\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\"><img class=\"logo img-fluid\" src=\"./assets/img/logo2-1.png\"\r\n");
      out.write("                                                          alt=\"logo\"></a>\r\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\"\r\n");
      out.write("                            data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("                            aria-label=\"Toggle navigation\">\r\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                        <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\">Về chúng tôi</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\">Đại lý kinh doanh</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\">Bảng giá dịch vụ</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\">Đội ngũ & Đối tác</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"header__bottom__right\">\r\n");
      out.write("                        <form class=\"header__bottom--search\">\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Bạn muốn ở đâu?\">\r\n");
      out.write("                                <div class=\"input-group-append\">\r\n");
      out.write("                                    <span class=\"input-group-text\" id=\"basic-addon2\">\r\n");
      out.write("                                        <i class=\"fa fa-search\"></i>\r\n");
      out.write("                                    </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("\r\n");
      out.write("        <!-- INFOR -->\r\n");
      out.write("        <section class=\"infor\">\r\n");
      out.write("            <div class=\"background-infor\">\r\n");
      out.write("                <div id=\"carouselBanner\" class=\"carousel slide\">\r\n");
      out.write("                    <div class=\"carousel-inner\">\r\n");
      out.write("                        <div class=\"carousel-item active\">\r\n");
      out.write("                            <img src=\"./assets/img/cover-1.jpg\" class=\"d-block w-100\" alt=\"cover-1\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"carousel-item\">\r\n");
      out.write("                            <img src=\"./assets/img/cover-2.jpg\" class=\"d-block w-100\" alt=\"cover-2\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"carousel-item\">\r\n");
      out.write("                            <img src=\"./assets/img/cover-3.jpg\" class=\"d-block w-100\" alt=\"cover-3\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a class=\"carousel-control-prev\" href=\"#carouselBanner\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("                        <i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>\r\n");
      out.write("                        <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a class=\"carousel-control-next\" href=\"#carouselBanner\" role=\"button\" data-slide=\"next\">\r\n");
      out.write("                        <i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>\r\n");
      out.write("                        <span class=\"sr-only\">Next</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"infor__content container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-12 col-md-4  d-flex my-5\">\r\n");
      out.write("                        <div class=\"image\">\r\n");
      out.write("                            <img src=\"./assets/img/best-choice.jpg\" alt=\"best-choice\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <h4>Lựa chọn tốt nhất</h4>\r\n");
      out.write("                            <p>HORD đưa cho bạn những lựa chọn phù hợp về nhà trọ để bạn có một cuộc sống vui vẻ.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-12 col-md-4 d-flex my-5\">\r\n");
      out.write("                        <div class=\"image\">\r\n");
      out.write("                            <img src=\"./assets/img/security.jpg\" alt=\"security\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <h4>An toàn & bảo mật</h4>\r\n");
      out.write("                            <p>Thông tin minh bạch, bảo mật cao cùng với những dịch vụ uy tín đem lại trải nghiệm tốt nhất\r\n");
      out.write("                                cho bạn</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-12 col-md-4 d-flex  my-5\">\r\n");
      out.write("                        <div class=\"image\">\r\n");
      out.write("                            <img src=\"./assets/img/support.jpg\" alt=\"img3\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <h4>Hỗ trợ 24/7</h4>\r\n");
      out.write("                            <p>Luôn luôn lắng nghe, luôn luôn hỗ trợ bạn về tất cả dịch vụ tại HORD.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <!-- MOTEL -->\r\n");
      out.write("        <section class=\"motel container\">\r\n");
      out.write("            <h3 class=\"heading\">TIN CHO THUÊ</h3>\r\n");
      out.write("            <div class=\"motel__content\">\r\n");
      out.write("                <div class=\"owl-carousel owl-theme\">\r\n");
      out.write("                    <div class=\"item\">\r\n");
      out.write("                        <a href=\"#\" class=\"motel-image\">\r\n");
      out.write("                            <img class=\"img-fluid\" src=\"./assets/img/nha-tro-1.jpeg\" alt=\"nt1\">\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <div class=\"motel-title my-4\">\r\n");
      out.write("                            <a href=\"#\" class=\"text-decoration-none\">NHÀ CHO THUÊ NGUYÊN CĂN T5.2022</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"motel-address my-2\">\r\n");
      out.write("                            <p>Quận Tân Bình, Thành phố Hồ Chí Minh</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"motel-services my-2\">\r\n");
      out.write("                            <p>Dịch vụ: thay ga gối 1 lần/...</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"d-flex justify-content-between my-2\">\r\n");
      out.write("                            <p>Liên hệ</p>\r\n");
      out.write("                            <p><i class=\"fas fa-history\"></i> một ngày trước</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"motel-price d-flex justify-content-between\">\r\n");
      out.write("                            <p>7.0 Triệu</p>\r\n");
      out.write("                            <button class=\"button--primary\">Xem ngay</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("        <section>\r\n");
      out.write("            <div class=\"card\">\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("\r\n");
      out.write("                    <ul class=\"nav nav-tabs\">\r\n");
      out.write("\r\n");
      out.write("                        ");

                            List<MotelDTO> listMotel = (ArrayList<MotelDTO>) request.getAttribute("LIST_MOTEL");
                            if (listMotel != null) {
                                if (listMotel.size() > 0) {
                                    for (MotelDTO motel : listMotel) {

                        
      out.write("\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a class=\"nav-link\" data-toggle=\"tab\" href=\"#a");
      out.print( motel.getMotelID());
      out.write("\">\r\n");
      out.write("                                <i class='bx bx-home-alt-2'></i>\r\n");
      out.write("                                <span>");
      out.print( motel.getName());
      out.write("</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        ");

                                    }
                                }
                            }
                        
      out.write(" \r\n");
      out.write("                    </ul>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"motel__content\">\r\n");
      out.write("\r\n");
      out.write("                        ");

                            if (listMotel != null) {
                                if (listMotel.size() > 0) {
                                    for (MotelDTO motel : listMotel) {
                        
      out.write("\r\n");
      out.write("                        <div class=\"owl-carousel owl-theme\">\r\n");
      out.write("                            <div class=\"item\">\r\n");
      out.write("                                <a href=\"#\" class=\"motel-image\">\r\n");
      out.write("                                    <img class=\"img-fluid\" src=\"./assets/img/nha-tro-1.jpeg\" alt=\"nt1\">\r\n");
      out.write("                                </a>\r\n");
      out.write("                                <div class=\"motel-title my-4\">\r\n");
      out.write("                                    <span>");
      out.print( motel.getName() );
      out.write("</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"motel-address my-2\">\r\n");
      out.write("                                    <span> ");
      out.print( motel.getAddress());
      out.write(',');
      out.print( motel.getDistrict());
      out.write(',');
      out.print( motel.getCity());
      out.write("</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"motel-services my-2\">\r\n");
      out.write("                                    <p>Dịch vụ: thay ga gối 1 lần/...</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"d-flex justify-content-between my-2\">\r\n");
      out.write("                                    <p>Liên hệ</p>\r\n");
      out.write("                                    <p><i class=\"fas fa-history\"></i> một ngày trước</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"motel-price d-flex justify-content-between\">\r\n");
      out.write("                                    <p>7.0 Triệu</p>\r\n");
      out.write("                                    <button class=\"button--primary\">Xem ngay</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("            </div>\r\n");
      out.write("                        ");

                                    }
                                }
                            }
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("    <!-- CONTACT -->\r\n");
      out.write("    <section class=\"contact\"></section>\r\n");
      out.write("\r\n");
      out.write("    <!-- FOOTER -->\r\n");
      out.write("    <footer class=\"mt-5\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row section mb-3\">\r\n");
      out.write("                <div class=\"col-12 col-sm-3\">\r\n");
      out.write("                    <h3>VỀ HORD</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\">FAQs</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Give us feedback</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Contact us</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 col-sm-3\">\r\n");
      out.write("                    <h3>THÔNG TIN</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\">About us</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Find us</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Schedule</a></li>\r\n");
      out.write("                        <li><a href=\"#\">News</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 col-sm-3\">\r\n");
      out.write("                    <h3>ĐIỀU KHOẢN VÀ CHÍNH SÁCH</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\">Terms & Conditions</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Privacy policy</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Cookie policy</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 col-sm-3 footer-contact\">\r\n");
      out.write("                    <h3>THÔNG TIN LIÊN LẠC</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\"><i class=\"fab fa-facebook-f\"></i> Facebook</a></li>\r\n");
      out.write("                        <li><a href=\"#\"><i class=\"fab fa-twitter\"></i> Twitter</a></li>\r\n");
      out.write("                        <li><a href=\"#\"><i class=\"fab fa-google-plus-g\"></i> Google +</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <hr>\r\n");
      out.write("            <div class=\"footer__copyright text-center\">\r\n");
      out.write("                <p>2022 © công ty TNHH chém gió xuyên quốc gia</p>\r\n");
      out.write("                <p>Địa chỉ: 269 Quang Trung, Thành phố Thủ Đức, TP.HCM</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- thư viện hỗ trợ -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js\"\r\n");
      out.write("    referrerpolicy=\"no-referrer\"></script>\r\n");
      out.write("    <!-- Jquery Waypoint -->\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js\"></script>\r\n");
      out.write("    <!-- BS4 JS -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("            integrity=\"sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx\"\r\n");
      out.write("    crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <!-- BS4 carousels -->\r\n");
      out.write("    <script>\r\n");
      out.write("        $('.carousel').carousel({\r\n");
      out.write("            interval: 3000\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <!-- owl carousels -->\r\n");
      out.write("    <script src=\"./assets/js/owl.carousel.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        $('.owl-carousel').owlCarousel({\r\n");
      out.write("            loop: true,\r\n");
      out.write("            margin: 10,\r\n");
      out.write("            nav: false,\r\n");
      out.write("            responsive: {\r\n");
      out.write("                0: {\r\n");
      out.write("                    items: 1\r\n");
      out.write("                },\r\n");
      out.write("                576: {\r\n");
      out.write("                    items: 2\r\n");
      out.write("                },\r\n");
      out.write("                1200: {\r\n");
      out.write("                    items: 4\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
