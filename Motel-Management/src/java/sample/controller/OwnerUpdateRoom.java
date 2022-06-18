/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.room.RoomDAO;

/**
 *
 * @author Bao
 */
@WebServlet(name = "OwnerUpdateRoom", urlPatterns = {"/OwnerUpdateRoom"})
public class OwnerUpdateRoom extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "OwnerShowRoomDetail";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String roomID = request.getParameter("roomID");
            String roomName = request.getParameter("roomName");
            String roomTypeID = request.getParameter("roomTypeID");
            RoomDAO dao = new RoomDAO();
            boolean check = dao.updateRoom(roomID, roomName, roomTypeID);
            if (check){
                url = SUCCESS;
                request.setAttribute("MESSAGE", "cập nhật thông tin phòng thành công !");
            }else{
                request.setAttribute("MESSAGE", "Cập Nhật Thất Bại");
            }
            
        } catch (Exception e) {
            log("Error at OwnerUpdateRoom: "+e.toString());
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
