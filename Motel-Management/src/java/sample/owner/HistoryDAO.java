/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.owner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author Bao
 */
public class HistoryDAO {
    private static final String GET_HISTORY="SELECT b.BookingID, m.MotelID,r.RoomID,u.FullName,b.Status,b.BookingDate,b.Total FROM tblMotel as m, tblRoomType as rt, tblRoom as r, tblBookingDetail as bd, tblBooking as b , tblUser as u\n" +
                                            "WHERE m.OwnerID = ? AND m.MotelID = rt.MotelID AND rt.RoomTypeID = r.RoomTypeID AND r.RoomID = bd.RoomID AND bd.BookingID = b.BookingID AND b.UserID = u.UserID";
    private static final String GET_PAYTYPE = "SELECT PaymentTypeName FROM tblPayment WHERE tblPayment.PaymentID = ?";
    private static final String GET_NUMBER_SERVICE = "SELECT COUNT(*) as NumberService FROM tblBooking as b, tblBookingServiceDetail as s WHERE b.BookingID = s.BookingID AND b.BookingID = ? ";
    
    public int getNumberService(String bookingid) throws SQLException {
        int numberService = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_NUMBER_SERVICE);
                ptm.setString(1, bookingid);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    numberService = rs.getInt("NumberService");    
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
        return numberService;
    }
    
    public String getPayType(String bookingid) throws SQLException {
        String payType = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PAYTYPE);
                ptm.setString(1, bookingid);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    payType = rs.getString("PaymentTypeName");    
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
        return payType;
    }
    
    public List<HistoryDTO> getListHistory(String ownerID) throws SQLException {
        List<HistoryDTO> listHistory = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_HISTORY);
                ptm.setString(1, ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingID = rs.getString("BookingID");
                    String motelID = rs.getString("MotelID");
                    String roomID = rs.getString("RoomID");
                    String userName = rs.getString("FullName");
                    String status = rs.getString("Status");
                    String date = rs.getString("BookingDate");
                    int totalPrice = rs.getInt("Total");
                    listHistory.add(new HistoryDTO(bookingID, motelID, roomID, ownerID, userName, status, 0, "", date, totalPrice));
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
        return listHistory;
    }

/*admin*/
  private static final String GET_USER_HISTORY="SELECT distinct b.BookingID,m.MotelID, m.Name, bd.RoomID,BookingDate, b.Total, b.Status\n" +
"						FROM tblBooking as b, tblBookingDetail as bd , tblPayment as p, tblRoom as r , tblRoomType as rt, tblMotel as m, tblUser as u\n" +
"						WHERE b.BookingID = bd.BookingID AND bd.RoomID = r.RoomID AND r.RoomTypeID=  rt.RoomTypeID AND rt.MotelID= m.MotelID AND b.UserID = u.UserID AND u.UserID = ?"
          + "                                   ORDER BY BookingDate desc";
 
    public List<HistoryDTO> getListUserBooking(String userID) throws SQLException {
     List<HistoryDTO> listHistory = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_USER_HISTORY);
                ptm.setString(1, userID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingID = rs.getString("BookingID");
                    String motelID = rs.getString("MotelID");
                    String roomID = rs.getString("RoomID");
                    String motelName = rs.getString("Name");
                    String status = rs.getString("Status");
                    String date = rs.getString("BookingDate");
                    int totalPrice = rs.getInt("Total");
                    listHistory.add(new HistoryDTO(bookingID, motelID, roomID, userID, motelName, status, 0, "", date, totalPrice));
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
        return listHistory;    
    }
}
