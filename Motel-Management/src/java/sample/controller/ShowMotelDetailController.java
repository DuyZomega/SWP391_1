/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;
import sample.room.RoomDAO;
import sample.room.RoomDTO;
import sample.service.ServiceDAO;
import sample.service.ServiceDTO;
import sample.users.UserDAO;
import sample.users.UserDTO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "ShowMotelDetailController", urlPatterns = {"/ShowMotelDetailController"})
public class ShowMotelDetailController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "user-motel-detail.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            MotelDAO motel2 = new MotelDAO();
            List<MotelDTO> listMotel2 = motel2.getDetailMotel(getInitParameter(motelID));
            List<RoomDTO> listRoom2 = new ArrayList<>();

            List<ServiceDTO> listService = new ArrayList<>();
            if (listMotel2.size() > 0) {
                request.setAttribute("LIST_MOTEL2", listMotel2);
                RoomDAO dao2 = new RoomDAO();
                for (MotelDTO motel3 : listMotel2) {
                    List<RoomDTO> list = dao2.searchRoom(motel3.getMotelID());
                    listRoom2.addAll(list);
                }
                request.setAttribute("LIST_ROOM2", listRoom2);
                ServiceDAO dao = new ServiceDAO();
                for (MotelDTO motel3 : listMotel2) {
                    List<ServiceDTO> list = dao.searchservice(motel3.getMotelID());
                    listService.addAll(list);
                }
                request.setAttribute("LIST_SERVICE2", listService);
                url = SUCCESS;
            } else {
                request.setAttribute("ERROR_MESSAGE", "No motel here");
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