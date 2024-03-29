/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.admin;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import sample.owner.HistoryDTO;
import sample.utils.DBUtils;

/**
 *
 * @author cao thi phuong thuy
 */
public class DashboardDAO {
    public int getMotelNumber() throws SQLException {
    int numberMotel = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql ="SELECT COUNT(MotelID) as NumberMotel FROM tblMotel Where Status=1";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    numberMotel = rs.getInt("NumberMotel");    
                }               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return numberMotel;    
    }

    public int getUserNumber() throws SQLException {
        int numberUser = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql ="SELECT COUNT(UserID) as NumberUser FROM tblUser Where Status=1";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    numberUser = rs.getInt("NumberUser");    
                }               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return numberUser;        
    }

    public int getOwnerNumber() throws SQLException {
     int numberUser = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql ="SELECT COUNT(UserID) as NumberUser FROM tblUser Where Status=1 AND Role ='OW'";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    numberUser = rs.getInt("NumberUser");    
                }               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return numberUser;     
    }

    public int getReportNumber() throws SQLException {
        int numberReport = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql ="SELECT COUNT(ReportID) as NumberReport FROM tblReport";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    numberReport = rs.getInt("NumberReport");    
                }               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return numberReport;   
        
    }

      public static  final String GET_TOP_INCOME ="SELECT distinct TOP 5 u.UserID, u.FullName, u.Image , u.Phone,m.Name as Name ,SUM(DISTINCT tblBooking.Total) as Income\n" +
"FROM tblUser as u, tblMotel as m,tblRoomType, tblRoom, tblBookingDetail, tblBooking ,tblPayment\n" +
"WHERE u.UserID = m.OwnerID AND m.MotelID = tblRoomType.MotelID AND tblRoomType.RoomTypeID = tblRoom.RoomTypeID AND tblRoom.RoomID = tblBookingDetail.RoomID AND tblBookingDetail.BookingID =tblBooking.BookingID \n" +
"Group BY u.UserID, u.FullName, u.Image , u.Phone, m.Name\n" +
"ORDER BY SUM(DISTINCT tblBooking.Total) desc";
    public List<HistoryDTO> getTopIncome() throws SQLException {
        
    List<HistoryDTO> topIncome = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOP_INCOME);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("UserID");
                    String userName = rs.getString("FullName");
                    String status = rs.getString("Image");
                    String payType = rs.getString("Phone");
                    String name = rs.getString("Name");
                    int total = rs.getInt("Income");
                    topIncome.add(new HistoryDTO(userID, userName, status,name, payType, total));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return topIncome;}

   
    //===========chart----------------
  
  public static  final String GET_DATE ="select v.date as date , count (v.time) as time \n" +
"from visit_tracking as v \n" +
"Where v.date = DATEADD(DAY , ? - DATEPART(WEEKDAY, GETDATE()), CAST(GETDATE() AS DATE))\n" +
"GROUP BY v.date\n" +
"Order by date" ;
    public List<DashboardDTO> getDate(int i) throws SQLException {
     List<DashboardDTO> listdate = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_DATE);
                ptm.setInt(1, i);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String date = rs.getString("date");
                    int time = rs.getInt("time");
                    listdate.add(new DashboardDTO(time, date));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listdate;
    }
    
    public String getStartDateOfMonth(int i) throws SQLException {
       
     String date ="" ;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql ="Declare @GivenDate datetime\n" +
                                "SET @GivenDate = GETDATE()\n" +
                                "\n" +
                                "Select DATEADD(MM,DATEDIFF(MM, 0, @GivenDate),?) as startdate";
                ptm = conn.prepareStatement(sql);
                ptm.setInt(1, i);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    date = rs.getString("startdate");    
                }               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return date;   }

    public String getEndDateOfMonth() throws SQLException {
    
     String date ="" ;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql ="SELECT DATEADD(d,-1, DATEADD(mm, DATEDIFF(mm, 0 ,GETDATE())+1, 0)) as enddate";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    date = rs.getString("enddate");    
                }               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return date;     
    }
 
  public static  final String GET_DATE_MONTH ="select v.date as date , count (v.time) as time \n" +
"from visit_tracking as v \n" +
"Where v.date = ? " +
"GROUP BY v.date\n" +
"Order by date" ;
    public List<DashboardDTO> getDateMth(String startdate) throws SQLException, ParseException {
    List<DashboardDTO> listdate = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_DATE_MONTH);
                ptm.setString(1, startdate);
                rs = ptm.executeQuery();
                
                while (rs.next()) {
                    String date = rs.getString("date");
                    int time = rs.getInt("time");
                    listdate.add(new DashboardDTO(time, date));
                }
                if (listdate.size() == 0) {
                    String date = startdate;
                    int time = 0;
                    listdate.add(new DashboardDTO(time, date));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listdate;  
    }
     
     
}
