/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.users.UserDAO;
import sample.users.UserDTO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "AdminUpdateUser", urlPatterns = {"/AdminUpdateUser"})
public class AdminUpdateUser extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String OWNER = "UserManager?action=all&role=OW";
    private static final String USER = "UserManager?action=all&role=US";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String userId = request.getParameter("userId");
            String fullName = request.getParameter("fullName");
            String image = request.getParameter("image");
            String address = request.getParameter("address");
            String citizenNumber = request.getParameter("citizenNumber");
            String phone = request.getParameter("phone");
            String gmail = request.getParameter("gmail");
            int gender = Integer.parseInt(request.getParameter("gender"));
            int status = Integer.parseInt(request.getParameter("status"));
            String role = request.getParameter("role");
            String DateOfBirth = request.getParameter("DateOfBirth");
            UserDTO user = new UserDTO(userId, fullName, image, gender, DateOfBirth, citizenNumber, phone, gmail, address, role, status);

            UserDAO dao = new UserDAO();
            boolean check = dao.detailUser(user);
            if (role.equals("US")) {
                if (check) {
                    request.setAttribute("MESSAGE", "Update successfully");
                    url = USER;
                } else {
                    request.setAttribute("ERROR_MESSAGE", "Update fail");
                    url = USER;
                }
            } else if (role.equals("OW")) {
                if (check) {
                    request.setAttribute("MESSAGE", "Update successfully");
                    url = OWNER;
                } else {
                    request.setAttribute("ERROR_MESSAGE", "Update fail");
                    url = OWNER;
                }
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
