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
import sample.booking.BookingDAO;
import sample.booking.BookingDTO;
import sample.booking.BookingDetailDAO;
import sample.booking.BookingDetailDTO;
import sample.booking.PaymentDAO;
import sample.booking.PaymentDTO;
import sample.room.RoomDAO;
import sample.users.UserDAO;
import sample.users.UserDTO;
import sample.users.UserError;

/**
 *
 * @author Bao
 */
@WebServlet(name = "OwnerAddCustomers", urlPatterns = {"/OwnerAddCustomers"})
public class OwnerAddCustomers extends HttpServlet {

    private static final String ERROR = "OwnerShowRoomDetail";
    private static final String SUCCESS = "OwnerShowRoomDetail";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String url = ERROR;
        Random generator = new Random();
        UserError userError = new UserError();
        UserDAO dao = new UserDAO();
        BookingDAO bDao = new BookingDAO();
        PaymentDAO payment = new PaymentDAO();
        BookingDetailDAO bookingDetail = new BookingDetailDAO();
        try {
            String cusName = request.getParameter("userName");
            String cusPhone = request.getParameter("phone");
            String cusCitizenNumber = request.getParameter("citizenNumber");
            String cusAddress = request.getParameter("address");
            int cusTime = Integer.parseInt(request.getParameter("Time"));
            String roomID = request.getParameter("roomID");
            boolean check = true;

            if (cusName.length() > 20 || cusName.length() < 5) {
                userError.setFullNameError("FullName Contains 5 - 20 characters!");
                check = false;
            }
            if (cusPhone.length() < 9) {
                userError.setPhoneError("Phone number must at least 9 number");
                check = false;
            }

            if (check == true) {
                String userID;
                boolean checkID = true;
                do {
                    userID = String.valueOf(generator.nextInt(9999999));
                    checkID = dao.checkUserID(userID);
                } while (checkID == true);
                UserDTO user = new UserDTO(userID, cusName, "", 0, "", cusCitizenNumber, cusPhone, "", cusAddress, "", "US", 0);
                boolean checkInsert = dao.insertCustomer(user);
                if (checkInsert) {
                    String bookingID;
                    do {
                        bookingID = String.valueOf(generator.nextInt(9999999));
                        checkID = dao.checkBookingID(bookingID);
                    } while (checkID == true);
                    int total = cusTime * bDao.getRoomPrice(roomID);
                    BookingDTO book = new BookingDTO(bookingID, "CURRENT_TIMESTAMP", "khach dat tai cho", userID, 0, total);
                    boolean checkCreate = bDao.insertBookingCustomer(book);
                    if (checkCreate) {
                        String bookingDetailID;
                        do {
                            bookingDetailID = String.valueOf(generator.nextInt(9999999));
                            checkID = bookingDetail.checkBookingDetailID(bookingDetailID);
                        } while (checkID == true);
                        BookingDetailDTO bt = new BookingDetailDTO(bookingDetailID, "", bookingID, cusTime);
                        check = bookingDetail.insertBt(bt, roomID);
                        if (check) {
                            String ownerID = payment.getOwnerID(roomID);
                            PaymentDTO pay = new PaymentDTO(bookingID, "chua thanh toan", "", userID, ownerID, "");
                            check = payment.insertPayment(pay);
                            if (check) {
                                RoomDAO roomdao = new RoomDAO();
                                check = roomdao.updateRoomBT(roomID);
                                if(check){
                                    url = SUCCESS;
                                    request.setAttribute("MESSAGE", "Thêm Khách Thành Công!");
                                }
                            }
                        }
                    }
                }
            } else {
                request.setAttribute("USER_ERROR", userError);
                request.setAttribute("ERROR", "Thêm Khách Thất Bại!");
            }

        } catch (Exception e) {
            log("Error at OwnerAddCustomers:" + e.toString());
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
