package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import sample.room.RoomDTO;
import sample.users.UserDTO;
import java.util.List;
import java.util.ArrayList;
import sample.motel.MotelDTO;

public final class owner_002droom_002dlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Home On Road</title>\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/img/logo2.png\">\r\n");
      out.write("    <!-- CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/owner-style.css\">\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css\">\r\n");
      out.write("    <!--Boxicons-->\r\n");
      out.write("    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>\r\n");
      out.write("    <!-- Other-->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.css\" >\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- sidebar -->\r\n");
      out.write("    <div class=\"sidebar\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"navigation\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <div class=\"logo\">\r\n");
      out.write("                        <a href=\"owner-index.html\">\r\n");
      out.write("                            <img class=\"logo\" src=\"assets/img/logo2.png\" alt=\"logo\">\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    ");

                            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                            if (loginUser == null || !loginUser.getRole().equals("OW")) {
                                response.sendRedirect("login.jsp");
                                return;           
                            }
                     
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-index.html\">\r\n");
      out.write("                            <span><i class='bx bx-tachometer'></i></span>\r\n");
      out.write("                            <span class=\"title\">Tổng quan</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"active\">\r\n");
      out.write("                        <a href=\"owner-room-list.html\">\r\n");
      out.write("                            <span><i class='bx bx-home'></i></span>\r\n");
      out.write("                            <span class=\"title\">Phòng</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-service.html\">\r\n");
      out.write("                            <span><i class='bx bx-cloud-rain'></i></span>\r\n");
      out.write("                            <span class=\"title\">Dịch vụ</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-history-room.html\">\r\n");
      out.write("                            <span><i class='bx bx-history'></i></span>\r\n");
      out.write("                            <span class=\"title\">Lịch sử thuê phòng</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-notification.html\">\r\n");
      out.write("                            <span><i class='bx bx-bell'></i></span>\r\n");
      out.write("                            <span class=\"title\">Gửi thông báo</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"owner-statistical.html\">\r\n");
      out.write("                            <span><i class='bx bx-line-chart'></i></span>\r\n");
      out.write("                            <span class=\"title\">Thống kê</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"MainController?action=ShowProfile&userID=");
      out.print(loginUser.getUserId());
      out.write("\">\r\n");
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
      out.write("                <div class=\"col-sm-12 my-2\">\r\n");
      out.write("                    <div class=\"toggle float-left\">\r\n");
      out.write("                        <i class='bx bx-menu'></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"float-left\">\r\n");
      out.write("                        <div class=\"dashboard_bar d-flex\">\r\n");
      out.write("                            Quản Lý Phòng\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"float-right\">\r\n");
      out.write("                        <div class=\"header-icon\">\r\n");
      out.write("                            <a href=\"#\" class=\"user-avatar\">\r\n");
      out.write("                                <span >Thoát</span>\r\n");
      out.write("                                <i class='bx bx-log-in-circle'></i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>   \r\n");
      out.write("                    </div>    \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- End header -->\r\n");
      out.write("\r\n");
      out.write("    <!-- List room -->\r\n");
      out.write("    <div class=\"main-content\">\r\n");
      out.write("        <div class=\"main\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-8\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-10 p-l-0\">\r\n");
      out.write("                        <div class=\"page-header\">\r\n");
      out.write("                            <div class=\"page-titles\">\r\n");
      out.write("                                <div class=\"action justify-content-md-end\">\r\n");
      out.write("                                    <button class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#addRoom\">Thêm Phòng</button>\r\n");
      out.write("                                    <button class=\"btn btn-primary\">Thêm Nhà</button>\r\n");
      out.write("                                    <button class=\"btn btn-danger\">Xóa Nhà</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /# column -->\r\n");
      out.write("                </div>\r\n");
      out.write("                <section>\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <!-- Nav tabs -->\r\n");
      out.write("                            <ul class=\"nav nav-tabs\">\r\n");
      out.write("                                <!-- dung vong for o day -->\r\n");
      out.write("                                ");

                                    List<MotelDTO> listMotel = (ArrayList<MotelDTO>) request.getAttribute("LIST_MOTEL");
                                    if (listMotel != null){
                                        if (listMotel.size() > 0){
                                            for (MotelDTO motel : listMotel) {
                                    
                                
      out.write("\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#a");
      out.print( motel.getMotelID() );
      out.write("\">\r\n");
      out.write("                                        <i class='bx bx-home-alt-2'></i>\r\n");
      out.write("                                        <span>");
      out.print( motel.getName() );
      out.write("</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                ");

                                            }
                                        }   
                                    }
                                
      out.write(" \r\n");
      out.write("                            </ul>\r\n");
      out.write("                            \r\n");
      out.write("                            <!-- Tab panes -->\r\n");
      out.write("                            <div class=\"tab-content\">\r\n");
      out.write("                                <!-- home1 -->\r\n");
      out.write("                                ");
                                  
                                    if (listMotel != null){
                                        if (listMotel.size() > 0){
                                            for (MotelDTO motel : listMotel) {
                                
      out.write("\r\n");
      out.write("                                <div class=\"tab-pane\" id=\"a");
      out.print( motel.getMotelID() );
      out.write("\" role=\"tabpanel\">\r\n");
      out.write("                                    <div class=\"search\">\r\n");
      out.write("                                        <div class=\"address-home\">\r\n");
      out.write("                                            <span>Địa chỉ: <h5> ");
      out.print( motel.getAddress());
      out.write(',');
      out.print( motel.getDistrict());
      out.write(',');
      out.print( motel.getCity());
      out.write("</h5></span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <form action=\"#\">\r\n");
      out.write("                                            <label>\r\n");
      out.write("                                                <input class=\"form-control\" type=\"text\" name=\"search\" placeholder=\"Search...\">\r\n");
      out.write("                                                <i class='bx bx-search-alt'></i>\r\n");
      out.write("                                            </label>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <!-- dung vong for o day -->\r\n");
      out.write("                                        ");
 
                                            List<RoomDTO> listRoom = (ArrayList<RoomDTO>) request.getAttribute("LIST_ROOM");
                                            for (RoomDTO room : listRoom) {
                                                if(room.getMotelID().equals(motel.getMotelID())){                                                                                                                                   
                                        
      out.write("\r\n");
      out.write("                                        <div class=\"col-xl-3 col-lg-6 col-sm-6 my-3\">\r\n");
      out.write("                                            <div class=\"card card-child\">\r\n");
      out.write("                                                <div class=\"room-name\">\r\n");
      out.write("                                                    <span>");
      out.print( room.getName() );
      out.write("</span>\r\n");
      out.write("                                                    <div class=\"status\">\r\n");
      out.write("                                                        <!-- dùng lệnh if -->\r\n");
      out.write("                                                        <span class=\"stt1\">Trạng thái:<h6></h6></span>\r\n");
      out.write("                                                        <!-- <span class=\"stt2\">Trạng thái:<h6>Đang thuê</h6></span>\r\n");
      out.write("                                                        <span class=\"stt3\">Trạng thái:<h6>Đã cọc</h6></span> -->\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"card-body room-title\">\r\n");
      out.write("                                                    <ul class=\"list\">\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <h6>Người thuê:</h6>\r\n");
      out.write("                                                            <span></span>\r\n");
      out.write("                                                        </li>                                                        \r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <h6>Thông tin phòng: ");
      out.print( room.getDesc());
      out.write("</h6>\r\n");
      out.write("                                                            <span>\r\n");
      out.write("                                                            </span>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <h6>Số lượng dịch vụ đã sử dụng:</h6>\r\n");
      out.write("                                                            <span>\r\n");
      out.write("                                                            </span>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <h5>Giá:</h5>\r\n");
      out.write("                                                            <span>");
      out.print( room.getPrice());
      out.write("&dstrok;</span>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                    </ul>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"form-group mx-auto\">\r\n");
      out.write("                                                    <button class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#titleRoom\">Chi Tiết</button>\r\n");
      out.write("                                                    <button class=\"btn btn-danger\" data-toggle=\"modal\" data-target=\"#deleteRoom\">Hủy Phòng</button>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        ");

                                                    }
                                                }
                                            
                                         
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                ");

                                            }
                                        }  
                                     }
                                
      out.write(" \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- end tapnet -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- add new Room -->\r\n");
      out.write("    <div id=\"addRoom\" class=\"modal fade\" role=\"dialog\">\r\n");
      out.write("        <div class=\"modal-dialog modal-dialog-centered modal-lg\" role=\"document\">\r\n");
      out.write("            <div class=\"modal-content modal-addRoom\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    <h4 class=\"modal-title\">Thêm Phòng Mới</h4>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <form action=\"#\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-md-5\">\r\n");
      out.write("                                <div class=\"row form-group\">\r\n");
      out.write("                                    <label for=\"firstname\" class=\"col-md-5 col-form-label\">Mã phòng</label>\r\n");
      out.write("                                    <input type=\"text\" name=\"roomID\" placeholder=\"Nhập Mã\" required class=\"form-control col-md-7\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"row form-group\">\r\n");
      out.write("                                    <label for=\"firstname\" class=\"col-md-5 col-form-label\">Giá</label>\r\n");
      out.write("                                    <input type=\"text\" name=\"price\" placeholder=\"Giá\" required class=\"form-control col-md-7\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"row form-group\">\r\n");
      out.write("                                    <label for=\"firstname\" class=\"col-md-5 col-form-label\">Mô tả</label>\r\n");
      out.write("                                    <textarea type=\"text\" name=\"price\" placeholder=\"Viết lý do khác ở đây\" required class=\"form-control col-md-7\" rows=\"3\"></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"offset-md-1 col-md-6\">\r\n");
      out.write("                                <div class=\"upload-img\">\r\n");
      out.write("                                    <div class=\"custom-file col-ms-4\">\r\n");
      out.write("                                        <label for=\"file-input\">\r\n");
      out.write("                                            <i class=\"fas fa-upload\"></i>&nbsp; Thêm ảnh phòng\r\n");
      out.write("                                        </label>\r\n");
      out.write("                                        <input type=\"file\" id=\"file-input\" accept=\"image/ png, image/ jpg\" onchange=\"preview()\" multiple>\r\n");
      out.write("                                        <p id=\"num-of-files\">No file choose</p>\r\n");
      out.write("                                        <div id=\"images\"></div>\r\n");
      out.write("                                    </div>  \r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-12\">\r\n");
      out.write("                                <div class=\"row form-group justify-content-center mt-3\">\r\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-success\">Xác nhận</button>\r\n");
      out.write("                                    <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\" id=\"removeFiles\">Cancel</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- title room -->\r\n");
      out.write("    <div id=\"titleRoom\" class=\"modal fade\" role=\"dialog\">\r\n");
      out.write("        <div class=\"modal-dialog modal-dialog-centered modal-xl\" role=\"content\">\r\n");
      out.write("            <div class=\"modal-content modal-addRoom\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    <h4 class=\"modal-title\">Thêm Phòng Mới</h4>\r\n");
      out.write("                    <button class=\"close\" type=\"button\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body container-fluid\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-12 col-md-5\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-6 text-md-right pb-1\">\r\n");
      out.write("                                    <span>Mã Phòng: </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-6\">\r\n");
      out.write("                                    <span>004 </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-6 text-md-right pb-1\">\r\n");
      out.write("                                    <span>Họ Tên Người Thuê: </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-6\">\r\n");
      out.write("                                    <span>Lê Minh Quân</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-6 text-md-right pb-1\">\r\n");
      out.write("                                    <span>Thời gian thuê: </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-6\">\r\n");
      out.write("                                    <span>01/06/2022</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-6 text-md-right pb-1\">\r\n");
      out.write("                                    <span>Hạn trả phòng: </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-6\">\r\n");
      out.write("                                    <span>02/06/2022</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-6 text-md-right pb-1\">\r\n");
      out.write("                                    <span>Dịch vụ: </span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-6\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li>Ăn uống</li>\r\n");
      out.write("                                        <li>Cho thuê xe gắn máy</li>\r\n");
      out.write("                                        <li>Khác</li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 col-md-7 text-lg-left\">\r\n");
      out.write("                            <div id=\"lightgallery\" class=\"row\">\r\n");
      out.write("                                <a href=\"assets/img/bgd.jpg\" data-exthumbimage=\"assets/img/bgd.jpg\" data-src=\"assets/img/bgd.jpg\" class= \"col-lg-4 col-md-6 mb-4\">\r\n");
      out.write("                                    <img src=\"assets/img/bgd.jpg\" alt=\"\" style=\"width:100%;\">\r\n");
      out.write("                                </a>   \r\n");
      out.write("                                <a href=\"assets/img/bgd.jpg\" data-exthumbimage=\"assets/img/bgd.jpg\" data-src=\"assets/img/bgd.jpg\" class= \"col-lg-4 col-md-6 mb-4\">\r\n");
      out.write("                                    <img src=\"assets/img/bgd.jpg\" alt=\"\" style=\"width:100%;\">\r\n");
      out.write("                                </a>  \r\n");
      out.write("                                <a href=\"assets/img/bgd.jpg\" data-exthumbimage=\"assets/img/bgd.jpg\" data-src=\"assets/img/bgd.jpg\" class= \"col-lg-4 col-md-6 mb-4\">\r\n");
      out.write("                                    <img src=\"assets/img/bgd.jpg\" alt=\"\" style=\"width:100%;\">\r\n");
      out.write("                                </a>                  \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-footer justify-content-center\">\r\n");
      out.write("                    <button class=\"btn btn-primary\" type=\"button\" data-dismiss=\"modal\">Chỉnh sửa</button>\r\n");
      out.write("                    <button class=\"btn btn-danger\" type=\"button\" data-dismiss=\"modal\">Thoát</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- remove Room -->\r\n");
      out.write("    <div id=\"deleteRoom\" class=\"modal fade\" role=\"dialog\">\r\n");
      out.write("        <div class=\"modal-dialog \" role=\"content\">\r\n");
      out.write("            <div class=\"modal-content modal-addRoom\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    <h4 class=\"modal-title\">Xác nhận hủy phòng</h4>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <form action=\"#\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-12\">\r\n");
      out.write("                                <div class=\"row form-group\">\r\n");
      out.write("                                    <label for=\"cancel\" class=\"col-md-4 col-form-label\">Lý do hủy phòng</label>\r\n");
      out.write("                                    <select class=\"form-control col-md-6\" name=\"reason\" id=\"\">\r\n");
      out.write("                                        <option value=\"\">Khách không nhận phòng</option>\r\n");
      out.write("                                        <option value=\"\">Khách đổi phòng</option>\r\n");
      out.write("                                        <option value=\"\">Khác</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"row form-group\">\r\n");
      out.write("                                    <label for=\"firstname\" class=\"col-md-4 col-form-label\">Lý do khác</label>\r\n");
      out.write("                                    <textarea type=\"text\" name=\"price\" placeholder=\"Viết lý do khác ở đây\" required class=\"form-control col-md-6\" rows=\"3\"></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"row form-group\">\r\n");
      out.write("                            <div class=\"offset-md-2 col-md-7 d-flex\">\r\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-success w-50\">Xác nhận</button>\r\n");
      out.write("                                <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Cancel</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/lightgallery/2.5.0-beta.5/lightgallery.es5.min.js\"></script>\r\n");
      out.write("    <script src=\"https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/owner-script.js\"></script>\r\n");
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
