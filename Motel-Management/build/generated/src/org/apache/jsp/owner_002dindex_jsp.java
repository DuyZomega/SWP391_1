package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class owner_002dindex_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\r\n");
      out.write("    <title>Home On Road</title>\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/img/logo2.png\">\r\n");
      out.write("    <!-- CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/owner-style.css\">\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\">\r\n");
      out.write("    <!--Boxicons-->\r\n");
      out.write("    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- sidebar -->\r\n");
      out.write("    <div class=\"sidebar\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"navigation\">  \r\n");
      out.write("                <ul>\r\n");
      out.write("                    <div class=\"logo\">\r\n");
      out.write("                        <a href=\"owner-index.jsp\">\r\n");
      out.write("                            <img class=\"logo\" src=\"assets/img/logo2.png\" alt=\"logo\">\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <li class=\"active\">\r\n");
      out.write("                        <a href=\"owner-index.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-tachometer'></i></span>\r\n");
      out.write("                            <span class=\"title\">Tổng quan</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li >\r\n");
      out.write("                        <a href=\"owner-room-list.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-home'></i></span>\r\n");
      out.write("                            <span class=\"title\">Phòng</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-service.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-cloud-rain'></i></span>\r\n");
      out.write("                            <span class=\"title\">Dịch vụ</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-history-room.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-history'></i></span>\r\n");
      out.write("                            <span class=\"title\">Lịch sử thuê phòng</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-notification.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-bell'></i></span>\r\n");
      out.write("                            <span class=\"title\">Gửi thông báo</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-statistical.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-line-chart'></i></span>\r\n");
      out.write("                            <span class=\"title\">Thống kê</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-profile.jsp\">\r\n");
      out.write("                            <span><i class='bx bx-user'></i></span>\r\n");
      out.write("                            <span class=\"title\">Tài khoản</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("    \r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- End sidebar -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Header -->\r\n");
      out.write("    <div class=\"header\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-sm-12\">\r\n");
      out.write("                    <div class=\"toggle float-left\">\r\n");
      out.write("                        <i class='bx bx-menu'></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"float-left\">\r\n");
      out.write("                        <div class=\"dashboard_bar d-flex\">\r\n");
      out.write("                            Trang Chủ\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"float-right\">\r\n");
      out.write("                        <div class=\"header-icon\">\r\n");
      out.write("                            <a href=\"#\" class=\"user-avatar\">\r\n");
      out.write("                                <span >Thoát</span>\r\n");
      out.write("                                <i class='bx bx-log-in-circle'></i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>   \r\n");
      out.write("                    </div>   \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- End header -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Main Content -->\r\n");
      out.write("    <div class=\"main-content\"> \r\n");
      out.write("        <!-- num of data -->\r\n");
      out.write("        <div class=\"cardBox\">\r\n");
      out.write("            <div class=\"card room\">\r\n");
      out.write("                <div class=\"inconBx\">\r\n");
      out.write("                    <i class='bx bx-home-heart'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"number\">1,504</div>\r\n");
      out.write("                    <div class=\"cardName\">Số lượng phòng</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card service\">\r\n");
      out.write("                <div class=\"inconBx\">\r\n");
      out.write("                    <i class='bx bx-detail'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"number\">1,504</div>\r\n");
      out.write("                    <div class=\"cardName\">Số lượng dịch vụ</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card feedback\">\r\n");
      out.write("                <div class=\"inconBx\">\r\n");
      out.write("                    <i class='bx bx-conversation'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"number\">1,504</div>\r\n");
      out.write("                    <div class=\"cardName\">Nhận xét</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card turnover\">\r\n");
      out.write("                <div class=\"inconBx\">\r\n");
      out.write("                    <i class='bx bx-money'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"number\">&#8363;1,512.250</div>\r\n");
      out.write("                    <div class=\"cardName\">Tổng doanh thu</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- order detail list -->\r\n");
      out.write("        <div class=\"details\">\r\n");
      out.write("            <div class=\"recent-orders\">\r\n");
      out.write("                <div class=\"cardHeader\">\r\n");
      out.write("                    <h2>Thông tin cập nhật</h2>\r\n");
      out.write("                    <a href=\"#\" class=\"btn btn-danger\">Xem tất cả</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <table class=\"table table-hover\">\r\n");
      out.write("                    <thead>\r\n");
      out.write("                        <tr class=\"col bg-opacity-10\">\r\n");
      out.write("                            <td>Họ và tên</td>\r\n");
      out.write("                            <td>Phòng</td>\r\n");
      out.write("                            <td>Giá (&#8363;)</td>\r\n");
      out.write("                            <td>Trạng thái</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tran Ngoc Hai</td>\r\n");
      out.write("                            <td>001</td>\r\n");
      out.write("                            <td>1,200,000</td>\r\n");
      out.write("                            <td><span class=\"demise\">Đang thuê</span></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tran Ngoc Hai</td>\r\n");
      out.write("                            <td>002</td>\r\n");
      out.write("                            <td>1,200,000</td>\r\n");
      out.write("                            <td><span class=\"outcome\">Đã thanh toán</span></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tran Ngoc Hai</td>\r\n");
      out.write("                            <td>003</td>\r\n");
      out.write("                            <td>1,200,000</td>\r\n");
      out.write("                            <td><span class=\"destroy\">Hủy phòng</span></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tran Ngoc Hai</td>\r\n");
      out.write("                            <td>004</td>\r\n");
      out.write("                            <td>1,200,000</td>\r\n");
      out.write("                            <td><span class=\"approval\">Chưa nhận phòng</span></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tran Ngoc Hai</td>\r\n");
      out.write("                            <td>005</td>\r\n");
      out.write("                            <td>1,200,000</td>\r\n");
      out.write("                            <td><span class=\"demise\">Đang thuê</span></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tran Ngoc Hai</td>\r\n");
      out.write("                            <td>006</td>\r\n");
      out.write("                            <td>1,200,000</td>\r\n");
      out.write("                            <td><span class=\"outcome\">Đã thanh toán</span></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/owner-script.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
