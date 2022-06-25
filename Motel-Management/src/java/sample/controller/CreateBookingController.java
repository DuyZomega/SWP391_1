package sample.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.users.UserDAO;
import sample.users.UserDTO;
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;
import sample.room.RoomDAO;
import sample.room.RoomTypeDTO;
import sample.users.UserError;
import java.io.IOException;
import javax.servlet.ServletException;

@WebServlet(name = "CreateBookingController", urlPatterns = {"/CreateBookingController"})
public class CreateBookingController extends HttpServlet {

    private static final String ERROR = "signup.jsp";
    private static final String SUCCESS = "user-booking.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserError userError = new UserError();
        try {
            String fullName = request.getParameter("fullName");
            String phone = request.getParameter("phone");
            String gmail = request.getParameter("gmail");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            int countRoom = request.getIntHeader("countroom");
            int countTime = request.getIntHeader("counttime");
            String typeName = request.getParameter("typename");
            UserDAO dao = new UserDAO();
            MotelDAO dao1 = new MotelDAO();
            RoomDAO dao2 = new RoomDAO();
            boolean check = true;
            if (check == true) {
                UserDTO user = new UserDTO(fullName, phone, gmail);
                boolean checkInsert = dao.insertUserNew(user);
                MotelDTO motel = new MotelDTO(name,address);
                boolean checkInsert1 = dao1.insertMotelNew(motel);
                RoomTypeDTO room = new RoomTypeDTO(typeName, countRoom, countTime);
                boolean checkInsert2 = dao2.insertRoomNew(room);
                if (checkInsert & checkInsert1 & checkInsert2) {
                    url = SUCCESS;
                }
            } else {
                request.setAttribute("USER_ERROR", userError);
            }

        } catch (Exception e) {
            log("Error at CreateController: " + e.toString());
            if (e.toString().contains("duplicate")) {
                userError.setUserIdError("Duplicate UserID !!!");
                request.setAttribute("USER_ERROR", userError);
            }
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
