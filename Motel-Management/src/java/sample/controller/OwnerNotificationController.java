/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.notification.NotificationDAO;
import sample.notification.NotificationDTO;
import sample.users.UserDTO;

/**
 *
 * @author Admins
 */
@WebServlet(name = "OwnerNotificationController", urlPatterns = {"/OwnerNotificationController"})
public class OwnerNotificationController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "owner-notification.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

            NotificationDAO dao = new NotificationDAO();
            NotificationDTO noti = new NotificationDTO();
            if (loginUser != null) {
                String userID = loginUser.getUserId();
                int notiNumber = dao.getNotificationNumber(userID);
                noti = new NotificationDTO(notiNumber);
                if (noti != null) {
                    request.setAttribute("NOTIFICATION", noti);
                    List<NotificationDTO> listNoti = dao.getnotiList();
                    if (listNoti != null) {
                        request.setAttribute("LIST_NOTI", listNoti);
                        url = SUCCESS;
                    }
                }
            }
        } catch (Exception e) {
            log("Error at NotificationController:" + e.toString());
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