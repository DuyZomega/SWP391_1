/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;
import sample.utils.DBUtils;

/**
 *
 * @author cao thi phuong thuy
 */
public class BookingDAO {

    private static final String BOOKING_SUB = "INSERT [tblBooking] ([BookingID], [BookingDate], [Desct], [UserID], [Status], [Total]) VALUES (?,?,?,?,?,?)";
    private static final String GET_TOTAL_BOOKING = "SELECT rt.Price FROM tblRoom as r , tblRoomType as rt WHERE r.RoomID = ? AND r.RoomTypeID = rt.RoomTypeID";
    private static final String BOOKING_CUSTOMER = "INSERT [tblBooking] ([BookingID], [BookingDate], [Desct], [UserID], [Status], [Total]) VALUES (?,CURRENT_TIMESTAMP,?,?,?,?)";
    private static final String ROOM_SET_STATUS = "UPDATE tblRoom SET Status = 1 WHERE RoomID = ?";
    
    public int getRoomPrice(String roomID) throws SQLException {
        int price = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_BOOKING);
                ptm.setString(1, roomID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    price = rs.getInt("Price");    
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
        return price;
    }
    
    public boolean insertBookingCustomer(BookingDTO book) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(BOOKING_CUSTOMER);
                ptm.setString(1, book.getBookingID());
                ptm.setString(2, book.getDesct());
                ptm.setString(3, book.getUserId());
                ptm.setInt(4, book.getStatus());
                ptm.setInt(5, book.getTotal());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    
    public boolean insertBooking(BookingDTO book) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(BOOKING_SUB);
                ptm.setString(1, book.getBookingID());
                ptm.setString(2, book.getDate());
                ptm.setString(3, book.getDesct());
                ptm.setString(4, book.getUserId());
                ptm.setInt(5, book.getStatus());
                ptm.setInt(6, book.getTotal());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

}
