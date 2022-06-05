package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Đăng ký</title>\r\n");
      out.write("    <!-- BS4 CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("        integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\r\n");
      out.write("    <!-- FONT AWESOME -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css\"\r\n");
      out.write("        integrity=\"sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==\"\r\n");
      out.write("        crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("    <!-- CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./assets/css/main.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"background\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-6 offset-lg-3 p-lg-0\">\r\n");
      out.write("                    <div class=\"login row\">\r\n");
      out.write("                        <div class=\"col-12 text-center\">\r\n");
      out.write("                            <a href=\"./index.jsp\"><img src=\"./assets/img/logo2-1.png\" alt=\"logo\"></a>\r\n");
      out.write("                            <h4 class=\"text-center\">Thông tin đăng ký</h4>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form col-12 px-5\">\r\n");
      out.write("                            <form class=\"row\">\r\n");
      out.write("                                <div class=\"form-item col-12\">\r\n");
      out.write("                                    <label for=\"name\">Họ và tên</label>\r\n");
      out.write("                                    <input type=\"text\"  name=\"fullName\" class=\"form-control\" aria-label=\"Default\" aria-describedby=\"inputGroup-sizing-default\" required=\"\">\r\n");
      out.write("                                    <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getFullNameError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </h5>     \r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-item col-12\">\r\n");
      out.write("                                    <label for=\"user\">Tên đăng nhập</label>\r\n");
      out.write("                                    <input type=\"text\"  name=\"userId\" class=\"form-control\" aria-label=\"Default\" aria-describedby=\"inputGroup-sizing-default\" required=\"\">\r\n");
      out.write("                                    <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getUserIdError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </h5>  \r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-item col-12\">\r\n");
      out.write("                                    <label for=\"gmail\">Gmail</label>\r\n");
      out.write("                                    <input type=\"text\"  name=\"gmail\" class=\"form-control\" aria-label=\"Default\" aria-describedby=\"inputGroup-sizing-default\" required=\"\">\r\n");
      out.write("                                    <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getEmailError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </h5>  \r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-item col-12\">\r\n");
      out.write("                                    <label for=\"telephone\">Số điện thoại</label>\r\n");
      out.write("                                    <input type=\"text\"  name=\"phone\" class=\"form-control\" aria-label=\"Default\" aria-describedby=\"inputGroup-sizing-default\" required=\"\">\r\n");
      out.write("                                    <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getPhoneError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </h5>  \r\n");
      out.write("                                </div>\r\n");
      out.write("                                    <input type=\"hidden\" name=\"status\" value=\"US\"/>\r\n");
      out.write("                                <div class=\"form-item col-12\">\r\n");
      out.write("                                    <label for=\"password\">Mật khẩu</label>\r\n");
      out.write("                                    <input type=\"password\"  name=\"password\" class=\"form-control\" aria-label=\"Default\" aria-describedby=\"inputGroup-sizing-default\" required=\"\">\r\n");
      out.write("                                    <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getPasswordError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </h5>  \r\n");
      out.write("                                </div>\r\n");
      out.write("                                    <input type=\"hidden\" name=\"status\" value=\"US\"/>\r\n");
      out.write("                                <div class=\"form-item col-12\">\r\n");
      out.write("                                    <label for=\"confirm-password\">Nhập lại mật khẩu</label>\r\n");
      out.write("                                    <input type=\"password\"  name=\"confirm\" class=\"form-control\" aria-label=\"Default\" aria-describedby=\"inputGroup-sizing-default\" required=\"\">\r\n");
      out.write("                                    <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getConfirmpasswordError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </h5> \r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"btn-group btn-group-toggle col-12 offset-md-3 col-md-6 pt-3\" data-toggle=\"buttons\">\r\n");
      out.write("                                    <label class=\"btn btn-success active\">\r\n");
      out.write("                                      <input type=\"radio\" name=\"US\" id=\"US\" checked> Người thuê\r\n");
      out.write("                                    </label>\r\n");
      out.write("                                    <label class=\"btn btn-danger\">\r\n");
      out.write("                                      <input type=\"radio\" name=\"OW\" id=\"OW\"> Chủ trọ\r\n");
      out.write("                                    </label>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                                <div class=\"button col-12\">\r\n");
      out.write("                                    <button type=\"submit\" value=\"Create\" class=\"btn btn-danger\">Đăng ký</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                            <div class=\"text-center mt-3\">\r\n");
      out.write("                                <label class=\"mb-0 me-2\">Bạn đã có tài khoản? </label>\r\n");
      out.write("                                <span><a href=\"./login.jsp\" class=\"signup text-primary\">Đăng nhập</a> ở\r\n");
      out.write("                                    đây</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- thư viện hỗ trợ -->\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js\"\r\n");
      out.write("        referrerpolicy=\"no-referrer\"></script>\r\n");
      out.write("    <!-- BS4 JS -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("        integrity=\"sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n");
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
