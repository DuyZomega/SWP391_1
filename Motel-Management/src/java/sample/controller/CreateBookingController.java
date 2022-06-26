package sample.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.room.RoomDAO;
import sample.users.UserError;
import java.io.IOException;
import java.sql.Date;
import java.util.Random;
import javax.servlet.ServletException;
import java.time.LocalDate;
import sample.booking.BookingDAO;
import sample.booking.BookingDTO;
import sample.booking.BookingDetailDTO;
import sample.payment.PaymentDAO;
import sample.payment.PaymentDTO;
import sample.room.RoomDTO;

@WebServlet(name = "CreateBookingController", urlPatterns = {"/CreateBookingController"})
public class CreateBookingController extends HttpServlet {

    private static final String ERROR = "signup.jsp";
    private static final String SUCCESS = "user-booking.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserError userError = new UserError();
        Random generator = new Random();
        Date date = new Date(0);
        try {
            Date bookingDate = Date.valueOf(LocalDate.now());
            String[] paymentType = request.getParameterValues("payment");
            String payment = paymentType.toString();
            String userID = request.getParameter("userId");
            String sender = request.getParameter("username");
            String receiver = request.getParameter("receiver");
            int Time = Integer.parseInt(request.getParameter("counttime"));
            String roomTypeName = request.getParameter("typename");
            String motelID = request.getParameter("motelID");
            String roomType = request.getParameter("typeofRoom");
            int status = 1;
            BookingDAO dao = new BookingDAO();
            PaymentDAO dao1 = new PaymentDAO();
            RoomDAO dao2 = new RoomDAO();
            boolean check = true;
            boolean checkCreatePayment = true;
            boolean checkCreateBooking = true;
            boolean checkCreateRoomtype = true;
            String bookingID = "";
            String paymentID = "";
            String roomID = "";
            boolean checkID = false;
            if (check) {
                do {
                    bookingID = String.valueOf(generator.nextInt(9999999));
                    paymentID = bookingID;
                    checkID = dao.checkBookingID(bookingID);
                } while (checkID = false);
                PaymentDTO payment1 = new PaymentDTO(paymentID, "", bookingDate, sender, receiver, payment);
                boolean check1 = dao1.insertPayment(payment1);
                if (check1) {
                    url = SUCCESS;
                } else {
                    checkCreatePayment = false;
                }
            }
            if (checkCreateBooking) {
                do {
                    bookingID = String.valueOf(generator.nextInt(9999999));
                    checkID = dao.checkBookingID(bookingID);
                } while (checkID = false);
                BookingDTO booking = new BookingDTO(bookingID, bookingDate, "", 0, 2, userID);
                boolean checkInsert = dao.insertBooking(booking);
                BookingDetailDTO booking1 = new BookingDetailDTO("", "", bookingID, Time);
                boolean checkInsert1 = dao.insertBookingDetail(booking1);
                if (checkInsert) {
                    url = SUCCESS;
                    if (checkInsert1) {
                        url = SUCCESS;
                    }
                }
            } else {
                request.setAttribute("BOOKING_ERROR", userError);
            }
            if (check) {
                boolean check2 = dao2.updateRoomstatus(roomID);
                if (check2) {
                    url = SUCCESS;
                    request.setAttribute("MESSAGE", "cập nhật thông tin phòng thành công !");
                } else {
                    request.setAttribute("MESSAGE", "Cập Nhật Thất Bại");
                }
            }
        } catch (Exception e) {
            log("Error at OwnerCreateRoomController:" + e.toString());
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
