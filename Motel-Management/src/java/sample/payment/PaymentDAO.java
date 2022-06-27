/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.payment;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import sample.utils.DBUtils;

/**
 *
 * @author Admins
 */
public class PaymentDAO {
    private static final String CREATE = "INSERT [tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES(?,?,?,?,?,?)";
    
    public boolean insertPayment(PaymentDTO payment) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(CREATE);
                stm.setString(1, payment.getPaymentID());
                stm.setString(2, payment.getDesct());
                stm.setDate(3, payment.getPaymentTime());
                stm.setString(4, payment.getSender());
                stm.setString(5, payment.getReceiver());
                stm.setString(6, payment.getPaymentTypeName());
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

    public boolean insertPayment(String paymentID, String string, Date bookingDate, String sender, String receiver, String payment) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
