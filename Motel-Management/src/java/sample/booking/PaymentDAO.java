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
 * @author cao thi phuong thuy
 */
public class PaymentDAO {
private static final String PAYMENT_SUB = "INSERT [tblPayment] (PaymentID, Desct, PaymentTime, Sender,Receiver,PaymentTypeName) VALUES (?,?,?,?,?,?)";
private static final String GET_OWNERID = "SELECT m.OwnerID FROM tblRoom as r , tblRoomType as rt , tblMotel as m WHERE r.RoomID = ? AND r.RoomTypeID = rt.RoomTypeID AND rt.MotelID = m.MotelID"; 

    public String getOwnerID(String roomID) throws SQLException {
        String ownerID = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_OWNERID);
                ptm.setString(1, roomID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    ownerID = rs.getString("OwnerID");    
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
        return ownerID;
    }

    public boolean insertPayment(PaymentDTO pay) throws SQLException { 
    boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(PAYMENT_SUB);
                ptm.setString(1, pay.getPaymentID());
                ptm.setString(2, pay.getDesct());
                ptm.setString(3, pay.getPaymentTime());
                ptm.setString(4, pay.getSender());
                ptm.setString(5, pay.getReceiver());
                ptm.setString(6, pay.getPaymentTypeName());
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
