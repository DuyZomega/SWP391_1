/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.notification.NotificationDAO;
import sample.notification.NotificationDTO;
import sample.owner.HistoryDAO;
import sample.owner.HistoryDTO;
import sample.users.UserDTO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "UserHistoryBooking", urlPatterns = {"/userhistorybooking"})
public class UserHistoryBooking extends HttpServlet {

    private static final String ERROR = "user-booking-list.jsp";
    private static final String SUCCESS = "user-booking-list.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;

        HistoryDAO dao = new HistoryDAO();
        try {
            HttpSession session = request.getSession();
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            String userID = loginUser.getUserId();
            List<HistoryDTO> listUserBooking = dao.getListUserBooking(userID);
            if (listUserBooking != null) {
                request.setAttribute("LIST_HISTORY", listUserBooking);
                url = SUCCESS;
            } else {
                request.setAttribute("ERROR", "Không có danh sách người đã đặt phòng!");
            }
            NotificationDAO dao1 = new NotificationDAO();
            NotificationDTO noti = new NotificationDTO();
            if (loginUser != null) {
                int notiNumber = dao1.getNotificationNumber(userID);
                noti = new NotificationDTO(notiNumber);
                if (noti != null) {
                    request.setAttribute("NOTIFICATION", noti);
                    List<NotificationDTO> listNoti = dao1.notiList(userID);
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
        } catch (Exception e) {
            log("Error at UserShowHistoryController:" + e.toString());
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
