/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bao
 */
@MultipartConfig()
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController"; 
    private static final String SHOW_MOTEL_LIST = "ShowAllMotel";
    private static final String SHOW_MOTEL_LIST_CONTROLLER = "ShowAllMotelController"; 
    private static final String SHOW_ROOM_LIST = "ShowRoom";
    private static final String SHOW_ROOM_LIST_CONTROLLER = "ShowRoomController"; 
    private static final String SHOW_PROFILE = "ShowProfile";
    private static final String SHOW_PROFILE_CONTROLLER = "ShowProfileController";
    private static final String UPDATE_USER = "updateOwner";
    private static final String UPDATE_USER_CONTROLLER = "UpdateOwnerController";
    private static final String CHANGE_PASSWORD = "ChangePassword";
    private static final String CHANGE_PASSWORD_CONTROLLER = "ChangePassWordController";
    private static final String CHANGE_IMAGE = "ChangeImage";
    private static final String CHANGE_IMAGE_CONTROLLER = "ChangeImageController";
    private static final String SHOW_OWNER_OVERVIEW = "ShowOverview";
    private static final String SHOW_OWNER_OVERVIEW_CONTROLLER = "OwnerShowOverview";
    private static final String SHOW_OWNER_HISTORY = "ShowHistory";
    private static final String SHOW_OWNER_HISTORY_CONTROLLER = "OwnerShowHistoryController";
    private static final String SHOW_ROOM_DETAIL = "showRoomDetail";
    private static final String SHOW_ROOM_DETAIL_CONTROLLER = "OwnerShowRoomDetail";
    private static final String DELETE_ROOM = "DeleteRoom";
    private static final String DELETE_ROOM_CONTROLLER = "OwnerDeleteRoom";
    private static final String UPDATE_ROOM = "updateRoom";
    private static final String UPDATE_ROOM_CONTROLLER = "OwnerUpdateRoom";
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            if(LOGIN.equals(action)){
                url = LOGIN_CONTROLLER;
            } else if (LOGOUT.equals(action)){
                url = LOGOUT_CONTROLLER;
                } else if (SHOW_MOTEL_LIST.equals(action)){
                url = SHOW_MOTEL_LIST_CONTROLLER;
            } else if (SHOW_ROOM_LIST.equals(action)){
                url = SHOW_ROOM_LIST_CONTROLLER;
            } else if (SHOW_PROFILE.equals(action)){
                url = SHOW_PROFILE_CONTROLLER;
            } else if (UPDATE_USER.equals(action)){
                url = UPDATE_USER_CONTROLLER;
            } else if (CHANGE_PASSWORD.equals(action)){
                url = CHANGE_PASSWORD_CONTROLLER;
            } else if (CHANGE_IMAGE.equals(action)){
                url = CHANGE_IMAGE_CONTROLLER;
            } else if (SHOW_OWNER_OVERVIEW.equals(action)){
                url = SHOW_OWNER_OVERVIEW_CONTROLLER;
            } else if (SHOW_OWNER_HISTORY.equals(action)){
                url = SHOW_OWNER_HISTORY_CONTROLLER;
            } else if (SHOW_ROOM_DETAIL.equals(action)){
                url = SHOW_ROOM_DETAIL_CONTROLLER;
            } else if (DELETE_ROOM.equals(action)){
                url = DELETE_ROOM_CONTROLLER;
            } else if (UPDATE_ROOM.equals(action)){
                url = UPDATE_ROOM_CONTROLLER;
            }
            
        } catch (Exception e) {
            log("Error at MainController: "+e.toString());
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
