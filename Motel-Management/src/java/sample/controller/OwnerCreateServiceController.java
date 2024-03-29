/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.service.ServiceDAO;
import sample.service.ServiceDTO;

/**
 *
 * @author Bao
 */
@WebServlet(name = "OwnerCreateServiceController", urlPatterns = {"/OwnerCreateServiceController"})
public class OwnerCreateServiceController extends HttpServlet {

    private static final String ERROR = "OwnerShowServiceController";
    private static final String SUCCESS = "OwnerShowServiceController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String url = ERROR;
        Random generator = new Random();
        ServiceDAO dao = new ServiceDAO();
        try {
            String motelId = request.getParameter("motelID");
            String serName = request.getParameter("serviceName");
            String price1 = request.getParameter("price");
            boolean checkValidation = true;

            if (serName.length() < 1 || serName.length() > 20) {
                checkValidation = false;
            }

            if (!price1.matches("[0-9]{2,15}")) {
                checkValidation = false;
            }

            if (checkValidation) {
                if (motelId != null) {
                    boolean checkID = true;
                    String serviceID;
                    int price = Integer.parseInt(price1);
                    do {
                        serviceID = String.valueOf(generator.nextInt(9999999));
                        checkID = dao.checkServiceID(serviceID);
                    } while (checkID == true);
                    ServiceDTO service = new ServiceDTO(serviceID, serName, price, 1, motelId);
                    boolean checkCreate = dao.insertService(service);
                    if (checkCreate) {
                        url = SUCCESS;
                        request.setAttribute("MESSAGE", "Thêm Dịch Vụ Thành Công!");
                    } else {
                        request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại!");
                    }
                }
            } else {
                request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại!");
            }

        } catch (Exception e) {
            request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại!");
            log("Error at OwnerCreateServiceController:" + e.toString());
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
