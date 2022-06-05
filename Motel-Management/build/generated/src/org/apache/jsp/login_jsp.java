package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Đăng nhập</title>\r\n");
      out.write("    <!-- BS4 CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("        integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\r\n");
      out.write("    <!-- FONT -->\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("    <link\r\n");
      out.write("        href=\"https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,100&family=Roboto+Condensed:wght@400;700&display=swap\"\r\n");
      out.write("        rel=\"stylesheet\">\r\n");
      out.write("    <!-- FONT AWESOME -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css\"\r\n");
      out.write("        integrity=\"sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==\"\r\n");
      out.write("        crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./assets/css/main.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"background\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row row-content px-3\">\r\n");
      out.write("                <div class=\"col-12 col-sm-4 offset-sm-4 login\">\r\n");
      out.write("                    <a href=\"index.jsp\"><img src=\"assets/img/logo2-1.png\" alt=\"logo\"></a>\r\n");
      out.write("                    <h4 class=\"text-center\">Điền thông tin đăng nhập</h4>\r\n");
      out.write("                    <form class=\"form\" action=\"MainController\" method=\"POST\">\r\n");
      out.write("                        <div class=\"col-12\">\r\n");
      out.write("                            <label for=\"userID\">Tên đăng nhập</label>\r\n");
      out.write("                            <input type=\"text\" name=\"userId\" class=\"form-control\" placeholder=\"userID or phone\">\r\n");
      out.write("                             <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                 ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getUserIdError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                             </h5> \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12\">\r\n");
      out.write("                            <label for=\"password\">Mật khẩu</label>\r\n");
      out.write("                            <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"password\">\r\n");
      out.write("                            <h5 style=\"color:black; background-color: white\">\r\n");
      out.write("                                 ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.USER_ERROR.getPasswordError()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                            </h5>                         \r\n");
      out.write("                            <a href=\"#\" class=\"float-end\">Quên mật khẩu?</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <button type=\"submit\" name=\"action\" value=\"Login\" class=\"btn btn-danger\">Đăng nhập</button>\r\n");
      out.write("                        <button type=\"reset\" value =\"Reset\" class=\"btn btn-success\">Reset</button>\r\n");
      out.write("                    </form>\r\n");
      out.write("                    <div class=\"d-flex align-items-center justify-content-center pt-lg-5\">\r\n");
      out.write("                        <p class=\"mb-0 me-2\">Don't have an account? </p>\r\n");
      out.write("                        <a href=\"signup.jsp\" class=\"signup\"> Đăng ký.</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- thư viện hỗ trợ -->\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js\"\r\n");
      out.write("        referrerpolicy=\"no-referrer\"></script>\r\n");
      out.write("    <!-- BS4 JS -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("        integrity=\"sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
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
