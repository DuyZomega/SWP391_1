/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.admin.VisitDAO;
import sample.admin.VisitDTO;
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;
import sample.notification.NotificationDAO;
import sample.notification.NotificationDTO;
import sample.users.UserDTO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "ShowMotelController", urlPatterns = {"/ShowMotelController"})
public class ShowMotelController extends HttpServlet {

    private static final String ERROR = "index.jsp";
    private static final String SUCCESS = "index.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        HttpSession session = request.getSession();
        Random generator = new Random();
        try {
            MotelDAO motel = new MotelDAO();
            List<MotelDTO> listMotel = motel.getListMotel();
            if (listMotel.size() > 0) {
                request.setAttribute("LIST_MOTEL", listMotel);

                List<MotelDTO> listMotelHot = motel.getListMotelHot();
                if (listMotelHot.size() > 0) {
                    request.setAttribute("LIST_MOTEL_HOT", listMotelHot);
                }
                url = SUCCESS;
            } else {
                request.setAttribute("ERROR", "Không có danh sách motel!");
            }
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

            NotificationDAO dao = new NotificationDAO();
            NotificationDTO noti = new NotificationDTO();
            if (loginUser != null) {
                String userID = loginUser.getUserId();
                int notiNumber = dao.getNotificationNumber(userID);
                noti = new NotificationDTO(notiNumber);
                if (noti != null) {
                    request.setAttribute("NOTIFICATION", noti);
                    List<NotificationDTO> listNoti = dao.notiList(userID);
                    if (listNoti != null) {
                        request.setAttribute("LIST_NOTI", listNoti);
                        url = SUCCESS;
                    } else {
                        request.setAttribute("ERROR", "Không có thông báo!");
                    }
                } else {
                    request.setAttribute("ERROR", "Không có thông báo!");
                }
            } else {
                request.setAttribute("ERROR", "Không có người dùng!");
            }
            /* get user agent  */
            String flag = (String) session.getAttribute("vtk");
            if (flag == "1") {
                return;
            }
            session.setAttribute("vtk", "1");
            String ipAddress = request.getRemoteAddr();
            request.setAttribute("ipAddress", ipAddress);
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            String time = formatter.format(date);
            long timestamp = date.getTime();
            String id = String.valueOf(generator.nextInt(9999999));
            VisitDTO visitDTO = new VisitDTO(id, timestamp, ipAddress, time);
            VisitDAO visit = new VisitDAO();
            boolean listvisit = visit.insertVisit(visitDTO);

            /*end*/
        } catch (Exception e) {
            log("Error at showlistcontroller: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
