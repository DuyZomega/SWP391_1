/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.notification;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author Admins
 */
public class NotificationDAO {
     private static final String SHOW_NOTIFICATION = "SELECT AnnouncementID, Title, Desct, tblNotification.Date as Date ,tblNotification.Status as Status, tblUser.UserID FROM tblNotification,tblUser WHERE tblNotification.UserID = tblUser.UserID AND tblUser.UserID = ? AND tblNotification.Status = 1 ";
     private static final String GET_NOTIFICATION_NUMBER = "SELECT COUNT(*) as NumberNotification FROM  tblUser, tblNotification \n" +
                                                      "WHERE tblUser.UserID = tblNotification.UserID AND tblUser.UserID = ? AND tblNotification.Status = 1";
     
     public List<NotificationDTO> notiList(String userID) throws SQLException {
        List<NotificationDTO> notiList = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SHOW_NOTIFICATION);
                ptm.setString(1, userID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String announceID = rs.getString("AnnouncementID");
                    String title = rs.getString("Title");
                    String desct = rs.getString("Desct");
                    Date date = rs.getDate("Date");
                    int status = rs.getInt("Status");
                    notiList.add(new NotificationDTO(announceID, title, desct, date, status));
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
        return notiList;
    }
     
     public int getNotificationNumber(String userID) throws SQLException {
        int notificationNumber = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_NOTIFICATION_NUMBER);
                ptm.setString(1, userID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    notificationNumber = rs.getInt("NumberNotification");
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
        return notificationNumber;
    }
}
