package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import sample.users.UserDTO;

public final class admin_002dmotel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Admin</title>\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/img/logo2.png\">\r\n");
      out.write("    <!-- CSS -->\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\">\r\n");
      out.write("    <!--Boxicons-->\r\n");
      out.write("    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>\r\n");
      out.write("    <!-- Data-Table -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/owner-style.css\">\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/admin.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <!-- sidebar -->\r\n");
      out.write("  <div class=\"sidebar\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"navigation\">\r\n");
      out.write("            \r\n");
      out.write("            <ul>\r\n");
      out.write("                <div class=\"logo\">\r\n");
      out.write("                    <a href=\"admin.jsp\">\r\n");
      out.write("                        <img class=\"logo\" src=\"assets/img/logo2.png\" alt=\"logo\">\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"admin.jsp\">\r\n");
      out.write("                        <span><i class='bx bx-tachometer'></i></span>\r\n");
      out.write("                        <span class=\"title\">Tổng quan</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"active\" >\r\n");
      out.write("                    <a href=\"admin-motel.jsp\">\r\n");
      out.write("                        <span><i class='bx bx-home'></i></span>\r\n");
      out.write("                        <span class=\"title\">Quản lý Motel</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"admin-user.jsp\">\r\n");
      out.write("                        <span><i class='bx bxs-user-rectangle'></i></span>\r\n");
      out.write("                        <span class=\"title\">Quản lý người thuê</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"admin-owner.jsp\">\r\n");
      out.write("                        <span><i class='bx bx-user-circle'></i></span>\r\n");
      out.write("                        <span class=\"title\">Quản lý chủ thuê</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"admin-report.jsp\">\r\n");
      out.write("                        <span><i class='bx bx-bell'></i></span>\r\n");
      out.write("                        <span class=\"title\">Report</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"\">\r\n");
      out.write("                        <span><i class='bx bx-user'></i></span>\r\n");
      out.write("                        <span class=\"title\">Tài khoản</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- End sidebar -->\r\n");
      out.write("\r\n");
      out.write("<!-- Header -->\r\n");
      out.write("<div class=\"header\">\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-sm-12 my-2\">\r\n");
      out.write("                <div class=\"toggle float-left\">\r\n");
      out.write("                    <i class='bx bx-menu'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"float-left\">\r\n");
      out.write("                    <div class=\"dashboard_bar d-flex\">\r\n");
      out.write("                        Quản lý phòng trọ\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"float-right\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <div class=\"dropdown dib\">\r\n");
      out.write("                            <div class=\"header-icon\" data-toggle=\"dropdown\">\r\n");
      out.write("                                <span class=\"user-avatar\">Admin Thuyctp\r\n");
      out.write("                                    <i class='bx bx-chevron-down'></i>\r\n");
      out.write("                                </span>\r\n");
      out.write("                                <div class=\"drop-down dropdown-profile dropdown-menu dropdown-menu-left\">\r\n");
      out.write("                                    <div class=\"dropdown-content-heading\">\r\n");
      out.write("                                        <span class=\"text-left\">Welcome admin</span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"dropdown-content-body\">\r\n");
      out.write("                                        <ul>\r\n");
      out.write("                                            <li>\r\n");
      out.write("                                                <a href=\"#\">\r\n");
      out.write("                                                    <i class='bx bx-user'></i>\r\n");
      out.write("                                                    <span>Tài khoản</span>\r\n");
      out.write("                                                </a>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li>\r\n");
      out.write("                                                <a href=\"owner-setting.jsp\">\r\n");
      out.write("                                                    <i class='bx bx-cog'></i>\r\n");
      out.write("                                                    <span>Cài đặt</span>\r\n");
      out.write("                                                </a>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li>\r\n");
      out.write("                                                <a href=\"#\">\r\n");
      out.write("                                                    <i class='bx bx-log-out-circle'></i>\r\n");
      out.write("                                                    <span>Thoát</span>\r\n");
      out.write("                                                </a>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>    \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- End header -->\r\n");
      out.write("\r\n");
      out.write("    <div class=\"main-content\">\r\n");
      out.write("        <div class=\"main\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <section>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-12\">\r\n");
      out.write("                            <div class=\"card\">\r\n");
      out.write("                                <div class=\"card-body\">\r\n");
      out.write("                                    <div class=\"table-responsive\">\r\n");
      out.write("                                        <table id=\"myTable\" class=\"table table-striped table-bordered\">\r\n");
      out.write("                                            <thead>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <th>MotelID</th>\r\n");
      out.write("                                                    <th>MotelName</th>\r\n");
      out.write("                                                    <th>Chủ trọ</th>\r\n");
      out.write("                                                    <th>Hotline</th>\r\n");
      out.write("                                                    <th>Số phòng</th>\r\n");
      out.write("                                                    <th>Địa chỉ</th>\r\n");
      out.write("                                                    <th>Rating</th>\r\n");
      out.write("                                                    <th>Status</th>\r\n");
      out.write("                                                    <th>Action</th>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                            </thead>\r\n");
      out.write("                                            <tbody>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>1</td>\r\n");
      out.write("                                                    <td>Motel 2</td>\r\n");
      out.write("                                                    <td>Thủy</td>\r\n");
      out.write("                                                    <td>0123456912</td>\r\n");
      out.write("                                                    <td>10</td>\r\n");
      out.write("                                                    <td>03 C18 Phú Nhuận Hồ Chí Minh</td>\r\n");
      out.write("                                                    <td>5</td>\r\n");
      out.write("                                                    <td>True</td>\r\n");
      out.write("                                                    <td>Del   /   Upd</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>2</td>\r\n");
      out.write("                                                    <td>Motel Blue</td>\r\n");
      out.write("                                                    <td>Quân</td>\r\n");
      out.write("                                                    <td>0123458784</td>\r\n");
      out.write("                                                    <td>10</td>\r\n");
      out.write("                                                    <td>03 C18 Phú Nhuận Hà Nội</td>\r\n");
      out.write("                                                    <td>5</td>\r\n");
      out.write("                                                    <td>True</td>\r\n");
      out.write("                                                    <td>Del   /   Upd</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                            </tbody>\r\n");
      out.write("                                        </table>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- /# card -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- /# column -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/admin.js\"></script>\r\n");
      out.write("</body>\r\n");
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
