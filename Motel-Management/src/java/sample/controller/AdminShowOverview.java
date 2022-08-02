/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controller;

import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.admin.DashboardDAO;
import sample.admin.DashboardDTO;
import sample.owner.HistoryDTO;

/**
 *
 * @author cao thi phuong thuy
 */
@WebServlet(name = "AdminShowOverview", urlPatterns = {"/AdminShowOverview"})
public class AdminShowOverview extends HttpServlet {

    private static final String ERROR = "admin.jsp";
    private static final String SUCCESS = "admin.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            //HttpSession session = request.getSession();
            //  UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            // String userID = loginUser.getUserId();
            DashboardDAO dao = new DashboardDAO();
            DashboardDTO dashboard = new DashboardDTO();
            int motelNumber = dao.getMotelNumber();
            int userNumber = dao.getUserNumber();
            int ownerNumber = dao.getOwnerNumber();
            int reportNumber = dao.getReportNumber();
            dashboard = new DashboardDTO(motelNumber, userNumber, ownerNumber, reportNumber);
            if (dashboard != null) {
                request.setAttribute("DASHBOARD", dashboard);
                List<HistoryDTO> topIncome = dao.getTopIncome();
                if (topIncome != null) {
                    request.setAttribute("TOP_INCOME", topIncome);
                    url = SUCCESS;
                }
            }
            //======chart =========
            //  DashboardDTO chart = new DashboardDTO();
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime then = now.plusDays(-7);
        
            List<DashboardDTO> listChart = new ArrayList<>();
            for (int i = -5; i <= 2; i++) {
                List<DashboardDTO> countdate = dao.getDate(i);
                listChart.addAll(countdate);
            }
            request.setAttribute("ADMINCHART", listChart);

            List<DashboardDTO> listChartMth = new ArrayList<>();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
            Date date = new Date();  
            String end =formatter.format(date);
            //String enddate = dao.getEndDateOfMonth();
          //  TemporalAccessor temporal = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S").parse(enddate); // use parse(date, LocalDateTime::from) to get LocalDateTime
            //String end = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(enddate);
            for (int i = 0; i <= 30; i++) {
                String startdate = dao.getStartDateOfMonth(i);
                TemporalAccessor temporal1 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S").parse(startdate);
                String start = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(temporal1);
               if(start.equals(end)){
                    List<DashboardDTO> countdate1 = dao.getDateMth(start);
                    listChartMth.addAll(countdate1);
                    break;
               } else{
                    List<DashboardDTO> countdate1 = dao.getDateMth(start);
                    listChartMth.addAll(countdate1);
                
               }
            }

            request.setAttribute("ADMINCHART_MONTH", listChartMth);
               // String start2 = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(temporal);

            //=============
        } catch (Exception e) {
            log("Error at AdminShowOverview: " + e.toString());
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
