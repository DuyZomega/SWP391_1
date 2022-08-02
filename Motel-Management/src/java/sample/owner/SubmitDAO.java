/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.owner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import sample.utils.DBUtils;

/**
 *
 * @author Bao
 */
public class SubmitDAO {
    private static final String submitPayment ="UPDATE tblPayment SET PaymentTime = CURRENT_TIMESTAMP , Desct = ?, PaymentTypeName = ? WHERE PaymentID = ?";
    private static final String submitBooking = "UPDATE tblBooking SET Status = 1 WHERE BookingID = ?";
    private static final String submitRoom = "UPDATE tblRoom SET Status = 0 FROM tblBooking as b, tblBookingDetail as bd, tblRoom as r \n" +
                                             "WHERE b.BookingID = ? AND b.BookingID = bd.BookingID AND bd.RoomID = r.RoomID";
    
    public boolean submitRoom(String roomID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(submitRoom);
                ptm.setString(1, roomID);
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
    
    public boolean submitBooking(String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(submitBooking);
                ptm.setString(1, bookingID);
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
    
    public boolean submitPayment(String paymentID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(submitPayment);
                ptm.setString(1, "đã thanh toán");
                ptm.setString(2, "Tiền Mặt");
                ptm.setString(3, paymentID);
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
