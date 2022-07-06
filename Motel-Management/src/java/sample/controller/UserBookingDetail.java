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
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;
import sample.users.UserDAO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "UserBookingDetail", urlPatterns = {"/UserBookingDetail"})
public class UserBookingDetail extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "user-booking-detail.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            UserDAO user = new UserDAO();
            HttpSession session = request.getSession();
            String userId = (String) session.getAttribute("userId");
            String motelID = request.getParameter("motelID");
            String bookingID = request.getParameter("bookingID");

            MotelDAO motel = new MotelDAO();
            List<MotelDTO> listMotel = motel.getDetailMotel(motelID);
            List<MotelDTO> listMotel1 = motel.getDetailInfoBook(bookingID);
            List<MotelDTO> listBooking = motel.getDetailBooking(bookingID);
           
            if (listBooking.size() > 0 || listMotel.size() > 0) { 
                 request.setAttribute("DETAIL_MOTEL", listMotel);
                  request.setAttribute("DETAIL_BOOK", listBooking);
                 request.setAttribute("DETAIL_MOTEL1", listMotel1);
                url = SUCCESS;
                }
              
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
