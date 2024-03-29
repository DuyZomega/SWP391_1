/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.notification;

import java.sql.*;
import java.util.Calendar;
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

    private static final String GET_OWNER_NOTIFICATION_NUMBER = "SELECT COUNT(*) as NumberNotification FROM  tblUser, tblNotification \n"
            + "WHERE tblUser.UserID = tblNotification.OwnerID AND tblUser.UserID = ? AND tblNotification.Status = 1";
    private static final String SUBMIT_BOOKING = "UPDATE tblBooking SET Status = 0 WHERE BookingID = ?";
    private static final String SUBMIT_ROOM = "UPDATE tblRoom SET Status = 1 FROM tblBooking, tblBookingDetail, tblRoom WHERE tblBooking.BookingID = ? AND tblBooking.BookingID = tblBookingDetail.BookingID AND tblBookingDetail.RoomID = tblRoom.RoomID";
    private static final String UNSUBMIT_BOOKING = "UPDATE tblBooking SET Status = 3 WHERE BookingID = ?";
    private static final String UNSUBMIT_ROOM = "UPDATE tblRoom SET Status = 0 FROM tblBooking, tblBookingDetail, tblRoom WHERE tblBooking.BookingID = ? AND tblBooking.BookingID = tblBookingDetail.BookingID AND tblBookingDetail.RoomID = tblRoom.RoomID";

    public boolean updateNotification(NotificationDTO notifi) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_NOTIFICATION);
                ptm.setString(1, notifi.getTitle());
                ptm.setInt(2, notifi.getStatus());
                ptm.setString(3, notifi.getAnnouncementID());
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

    public boolean updateNotification1(NotificationDTO notifi) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_NOTIFICATION1);
                ptm.setInt(1, notifi.getStatus());
                ptm.setString(2, notifi.getUserID());
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

    public boolean updateNotification2(NotificationDTO notifi) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_NOTIFICATION2);
                ptm.setInt(1, notifi.getStatus());
                ptm.setString(2, notifi.getUserID());
                ptm.setString(3, notifi.getAnnouncementID());
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


    public int getOwnerNotificationNumber(String userID) throws SQLException {
        int notificationNumber = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_OWNER_NOTIFICATION_NUMBER);
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

    public boolean submitRoom(String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SUBMIT_ROOM);
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

    public boolean submitBooking(String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SUBMIT_BOOKING);
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

    public boolean unSubmitRoom(String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UNSUBMIT_ROOM);
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

    public boolean unSubmitBooking(String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UNSUBMIT_BOOKING);
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
    private static final String SHOW_NOTIFICATION = "SELECT AnnouncementID, Title, tblNotification.Desct as Desct, tblNotification.Date as Date ,tblNotification.Status as Status, tblUser.UserID FROM tblNotification,tblUser,tblBooking  WHERE tblBooking.UserID = tblUser.UserID AND tblUser.UserID = ? AND tblBooking.BookingID = tblNotification.AnnouncementID ";
    private static final String GET_NOTIFICATION_NUMBER = "SELECT COUNT(*) as NumberNotification FROM  tblUser, tblNotification,tblBooking \n"
            + "WHERE tblUser.UserID = tblBooking.UserID AND tblUser.UserID = ? AND tblNotification.Status = 1 AND tblBooking.BookingID = tblNotification.AnnouncementID";

    private static final String NOTIFICATION = "INSERT [tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (?,?,?,?,?,?)";

    private static final String LIST_NOTIFICATION = "SELECT AnnouncementID, Title, tblNotification.Desct as Desct, tblNotification.Date as Date ,tblNotification.Status as Status, tblUser.UserID FROM tblNotification,tblUser,tblBooking WHERE tblBooking.UserID = tblUser.UserID AND tblUser.UserID = ? ";

    private static final String UPDATE_NOTIFICATION1 = "UPDATE tblNotification SET Status = ? FROM tblBooking,tblNotification,tblUser WHERE tblUser.UserID = ? AND tblBooking.UserID = tblUser.UserID";
    private static final String UPDATE_NOTIFICATION2 = "UPDATE tblNotification SET Status = ? FROM tblBooking,tblNotification,tblUser WHERE tblBooking.UserID = tblUser.UserID AND AnnouncementID = ?";
    private static final String UPDATE_NOTIFICATION = "UPDATE tblNotification SET Title = ? , Status = ? WHERE AnnouncementID = ?";
    private static final String LIST_OWNER_NOTIFICATION = "SELECT AnnouncementID, Title, tblNotification.Desct, tblNotification.Date as Date ,tblNotification.Status as Status, tblUser.FullName\n" +
                                                    "FROM tblNotification,tblUser,tblBooking\n" +
                                                    "WHERE tblUser.UserID = tblBooking.UserID AND tblBooking.BookingID = tblNotification.AnnouncementID AND tblNotification.OwnerID = ? ORDER BY tblNotification.Date DESC ";
    public boolean insertNotification(NotificationDTO notifi) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(NOTIFICATION);
                ptm.setString(1, notifi.getAnnouncementID());
                ptm.setString(2, notifi.getTitle());
                ptm.setString(3, notifi.getDesct());
                ptm.setDate(4, notifi.getDate());
                ptm.setString(5, notifi.getOwnerID());
                ptm.setInt(6, notifi.getStatus());
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

    public List<NotificationDTO> getnotiList(String userID) throws SQLException {
        List<NotificationDTO> notiList1 = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LIST_NOTIFICATION);
                ptm.setString(1, userID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String announceID = rs.getString("AnnouncementID");
                    String title = rs.getString("Title");
                    String desct = rs.getString("Desct");
                    Date date = rs.getDate("Date");
                    int status = rs.getInt("Status");
                    String fullname = rs.getString("FullName");
                    notiList1.add(new NotificationDTO(announceID, title, desct, date, userID, status, fullname));
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
        return notiList1;
    }
    
    public List<NotificationDTO> getOwnerNotiList(String ownerID) throws SQLException {
        List<NotificationDTO> notiList1 = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LIST_OWNER_NOTIFICATION);
                ptm.setString(1, ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String announceID = rs.getString("AnnouncementID");
                    String title = rs.getString("Title");
                    String desct = rs.getString("Desct");
                    Date date = rs.getDate("Date");
                    int status = rs.getInt("Status");
                    String fullname = rs.getString("FullName");
                    notiList1.add(new NotificationDTO(announceID, title, desct, date, ownerID, status, fullname));
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
        return notiList1;
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
