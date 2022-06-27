/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sample.utils.DBUtils;

/**
 *
 * @author Admins
 */

public class BookingDAO {
        private static final String CREATE = "INSERT [tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES(?,?,?,?,?,?)";
        private static final String CREATE1 = "INSERT [tblBookingDetail] ([BookingDteailID], [RoomID], [BookingID], [Time]) VALUES(?,?,?,?)";
        private static final String CHECK_BOOKINGID = "SELECT BookingID FROM tblBooking Where BookingID = ?";
    public boolean insertBooking(BookingDTO booking) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(CREATE);
                stm.setString(1, booking.getBookingID());
                stm.setDate(2, booking.getBookingDate());
                stm.setString(3, booking.getDesct());
                stm.setDouble(4, booking.getTotal());
                stm.setInt(5, booking.getStatus());
                stm.setString(6, booking.getUserID());
                check = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    public boolean insertBookingDetail(BookingDetailDTO booking) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(CREATE);
                stm.setString(1, booking.getBookingID());
                stm.setString(2, booking.getRoomID());
                stm.setString(3, booking.getBookingID());
                stm.setInt(4, booking.getTime());
                check = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    
    public boolean checkBookingID(String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_BOOKINGID);
                ptm.setString(1, bookingID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {
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

        return check;
    }
}
