/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.booking.BookingDAO;
import sample.booking.BookingDTO;
import sample.booking.BookingDetailDAO;
import sample.booking.BookingDetailDTO;
import sample.booking.PaymentDAO;
import sample.booking.PaymentDTO;
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;
import sample.notification.NotificationDAO;
import sample.notification.NotificationDTO;
import sample.room.RoomDAO;
import sample.room.RoomDTO;
import sample.room.TestDAO;
import sample.room.TestDTO;
import sample.users.SendEmail;
import sample.users.UserDAO;
import sample.users.UserDTO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "BookingController", urlPatterns = {"/BookingController"})
public class BookingController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "userhistorybooking";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String orderTable = "";
            List<BookingDetailDTO> listbt = new ArrayList<>();
            HttpSession session = request.getSession();
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            MotelDAO motel = new MotelDAO();
            UserDAO user = new UserDAO();
            BookingDAO booking = new BookingDAO();
            BookingDetailDAO bookingDetail = new BookingDetailDAO();
            PaymentDAO payment = new PaymentDAO();
            String userId = (String) session.getAttribute("userId");
            String motelID = request.getParameter("motelID");
            String desct = request.getParameter("desct");
            int total = Integer.parseInt(request.getParameter("total"));
            int status = Integer.parseInt(request.getParameter("status"));
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();
            String bookdate = formatter.format(date);
            Random generator = new Random();
            String bookingID = String.valueOf(generator.nextInt(9999999));
            List<MotelDTO> listMotel = motel.getDetailMotel(motelID);
            // List<RoomTypeDTO> listRoomType = roomtype.getRoomTypeTest(motelID);
            boolean check = false;
            BookingDTO book = new BookingDTO(bookingID, bookdate, desct, userId, status, total);
            boolean checkCreate = booking.insertBooking(book);
            if (status == 0) {
                String pmtn = "Tiền mặt";
                PaymentDTO pay = new PaymentDTO(bookingID, desct, bookdate, userId, "", pmtn);
                check = payment.insertPayment(pay);
            } else if (status == 2) {
                String pmtn = "Chuyển khoản";
                PaymentDTO pay = new PaymentDTO(bookingID, desct, bookdate, userId, "", pmtn);
                check = payment.insertPayment(pay);
            }

            //=============booking detail===============
            TestDAO test = new TestDAO();
            String[] roomTypeID = request.getParameterValues("roomTypeID[]");
            String[] typeName = request.getParameterValues("typename[]");
            String[] price = request.getParameterValues("price[]");
            String[] countroom = request.getParameterValues("countroom[]");
            String[] counttime = request.getParameterValues("counttime[]");
            List<TestDTO> listTest = new ArrayList();
            boolean updateroom = false;
            for (int i = 0; i < roomTypeID.length; i++) {
                String id = roomTypeID[i];
                String name = typeName[i];
                int p = Integer.parseInt(price[i]);
                int cr = Integer.parseInt(countroom[i]);
                int ct = Integer.parseInt(counttime[i]);
                listTest.add(new TestDTO(id, name, p, ct, cr));
                listbt.add(new BookingDetailDTO(bookingID, id, bookingID, ct));
                RoomDAO roomdao1 = new RoomDAO();
                boolean checkBT = false;
                for (int c = 1; c <= cr; c++) {
                    List<RoomDTO> toproom = roomdao1.findtoprooom(id, cr);
                    for (RoomDTO roomDTO : toproom) {
                        String bookingdetailID = String.valueOf(generator.nextInt(9999999));
                        BookingDetailDTO bt = new BookingDetailDTO(bookingdetailID, id, bookingID, ct);

                        checkBT = bookingDetail.insertBt(bt, roomDTO.getRoomId());
                        if (checkBT) {
                            RoomDTO room = new RoomDTO(id, status);
                            RoomDAO roomdao = new RoomDAO();
                            updateroom = roomdao.updateRoomBT(roomDTO.getRoomId());
                        }
                    }
                }
            }
            if (checkCreate & check & updateroom) {
                request.setAttribute("SUCCESS", "Booking successfully ");
                url = SUCCESS;
            }
            //===============
            String motelInfo = "";
            List<MotelDTO> lm = motel.getDetailInfoBook(bookingID);
            for (MotelDTO m : lm) {
                motelInfo += "<h4>" + m.getName() + "</h4><br> Address: " + m.getAddress() + ", " + m.getDistrict() + ", " + m.getCity() + "<br> TOTAL :" + m.getMotelprice() + "VND. <br>";
            }

            List<MotelDTO> listBooking = motel.getDetailBooking(bookingID);
            for (MotelDTO m : listBooking) {
                orderTable += "<br>- Roomtype: " + m.getTypename() + " - Room number: " + m.getNumberRoom() + "(Price: " + m.getMotelprice() + " vnd/room) - Hour:" + m.getNumberRoomType() + " (h)<br>";
            }
            byte[] byteText = orderTable.getBytes(Charset.forName("UTF-8"));
            UserDTO userProfile = user.getUserProfile(userId);
            String gmailUser = userProfile.getGmail();
            String value = new String(byteText, "UTF-8");

            String mes = "Your order have ID: <h5>" + bookingID + "<h5> <br> "
                    + motelInfo
                    + value
                    + "<br>For any questions, please contact the ROH Motel hotline: 0396421901";
            SendEmail.sendEmail(gmailUser, mes);
            //===============
            NotificationDAO dao = new NotificationDAO();
            String annoucementID = String.valueOf(generator.nextInt(9999999));
            String title = "Bạn đã đặt phòng";
            String desc = "Đang xử lý";
            Calendar calendar = Calendar.getInstance();
            java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());
            int Status = 1;
            if (loginUser != null) {
                String userID = loginUser.getUserId();
                NotificationDTO noti = new NotificationDTO(annoucementID, title, desc, startDate, userID, Status);
                boolean checkCreateNoti = dao.insertNotification(noti);
            }

            NotificationDTO noti = new NotificationDTO();
            if (loginUser != null) {
                String userID = loginUser.getUserId();
                int notiNumber = dao.getNotificationNumber(userID);
                noti = new NotificationDTO(notiNumber);
                if (noti != null) {
                    request.setAttribute("NOTIFICATION", noti);
                    List<NotificationDTO> listNoti = dao.notiList(userID);
                    if (listNoti != null) {
                        request.setAttribute("LIST_NOTI", listNoti);
                        url = SUCCESS;
                    }
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
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(BookingController.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(BookingController.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
