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
import sample.owner.RoomDetailDAO;
import sample.service.ServiceDAO;
import sample.service.ServiceDTO;

/**
 *
 * @author Bao
 */
@WebServlet(name = "OwnerAddServiceBookingController", urlPatterns = {"/OwnerAddServiceBookingController"})
public class OwnerAddServiceBookingController extends HttpServlet {

    private static final String ERROR = "OwnerShowRoomDetail";
    private static final String SUCCESS = "OwnerShowRoomDetail";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        Random generator = new Random();
        ServiceDAO sDAO = new ServiceDAO();
        RoomDetailDAO rDAO = new RoomDetailDAO();
        try {
            String bookingID = request.getParameter("bookingID");
            String serviceID = request.getParameter("serviceID");
            int serviceNumber = Integer.parseInt(request.getParameter("numberService"));
            
            ServiceDTO service = sDAO.checkServiceBooking(bookingID, serviceID);
            if(service != null){
                int newQuantity = service.getQuantity() + serviceNumber ;
                int newTotalServiceDetail = newQuantity * service.getPrice();
                int totalPriceRoom = rDAO.getBookingPrice(bookingID);                
                
                boolean checkUpdate = sDAO.updateBookingServiceDetail(newQuantity, newTotalServiceDetail, bookingID, serviceID);
                if(checkUpdate){
                    int totalServiceBooking = rDAO.getBookingServicePrice(bookingID);
                    int newBookingTotal = totalServiceBooking + totalPriceRoom;
                    checkUpdate = sDAO.updateBookingTotal(newBookingTotal, bookingID);
                    if(checkUpdate){
                        url = SUCCESS;
                        request.setAttribute("MESSAGE", "Thêm Dịch Vụ Thành Công!");
                    }else{
                        request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại");
                    }
                }else{
                    request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại");
                }
            }else{
                String serviceDetailID;
                boolean checkID = true;
                do {
                    serviceDetailID = String.valueOf(generator.nextInt(9999999));
                    checkID = sDAO.checkServiceDetailID(serviceDetailID);
                } while (checkID == true);
                
                ServiceDTO service1 = sDAO.getServiceByID(serviceID);
                int totalServiceDetail = serviceNumber * service1.getPrice();
                boolean checkCreate = sDAO.insertBookingServiceDetail(serviceDetailID, serviceID, bookingID, serviceNumber, totalServiceDetail);
                if(checkCreate){
                    int totalPriceRoom = rDAO.getOldBookingPrice(bookingID);
                    int newTotalBooking = totalPriceRoom + totalServiceDetail;
                    boolean checkUpdate = sDAO.updateBookingTotal(newTotalBooking, bookingID);
                    if(checkUpdate){
                        url = SUCCESS;
                        request.setAttribute("MESSAGE", "Thêm Dịch Vụ Thành Công!");
                    }else{
                        request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại");
                    }
                }else{
                    request.setAttribute("ERROR", "Thêm Dịch Vụ Thất Bại");
                }
            }
        } catch (Exception e) {
            log("Error at OwnerAddServiceBookingController:" + e.toString());
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
