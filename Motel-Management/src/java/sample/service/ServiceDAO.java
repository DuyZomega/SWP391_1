/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;
/**
 *
 * @author cao thi phuong thuy
 */
public class ServiceDAO {
    private static final String GET_SERVICE_BOOKING = "SELECT  s.ServiceID, s.ServiceName, s.Price, d.Quantity FROM tblBookingServiceDetail as d, tblService as s WHERE s.ServiceID = d.ServiceID AND BookingID = ?";
    private static final String GET_SERVICE = "SELECT  s.ServiceName, s.Status, s.Price,s.ServiceID , m.Name FROM tblMotel as m, tblService as s WHERE s.MotelID = m.MotelID AND s.Status = 1 AND m.MotelID =? AND s.Status = 1";
    private static final String DELETE_SERVICE = "UPDATE tblService SET Status = 0 WHERE ServiceID = ?";    
    private static final String UPDATE_SERVICE = "UPDATE tblService SET ServiceName = ?, Price = ? WHERE ServiceID = ?"; 
    private static final String CHECK_SERVICEID = "SELECT ServiceID FROM tblService Where ServiceID = ?";
    private static final String CREATE = "INSERT [tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES(?,?,?,?,?)";
    private static final String GET_SERVICE_BY_ROOMID = "SELECT s.ServiceID, s.ServiceName, s.Price, s.Status FROM tblRoom as r, tblRoomType as rt, tblMotel as m, tblService as s\n" +
                                                        "WHERE r.RoomID = ? AND r.RoomTypeID = rt.RoomTypeID AND rt.MotelID = m.MotelID AND m.MotelID = s.MotelID AND s.Status = 1";
    private static final String CHECK_SERVICE_BOOKING = "SELECT s.ServiceID , s.ServiceName, bsd.Quantity, s.Price FROM tblBooking as b, tblBookingServiceDetail as bsd , tblService as s\n" +
                                                        "WHERE b.BookingID = ? AND b.BookingID = bsd.BookingID AND bsd.ServiceID = ? AND bsd.ServiceID = s.ServiceID";
    private static final String UPDATE_BOOKING_SERVICE_DETAIL = "UPDATE tblBookingServiceDetail SET Quantity = ? , Total = ? FROM tblBooking , tblBookingServiceDetail\n" +
                                                                "WHERE tblBooking.BookingID = ? AND tblBookingServiceDetail.ServiceID = ? AND tblBooking.BookingID  = tblBookingServiceDetail.BookingID";
    private static final String UPDATE_BOOKING_TOTAL = "UPDATE tblBooking SET Total = ? FROM tblBooking WHERE tblBooking.BookingID = ?";
    private static final String CHECK_SERVICE_DETAIL_ID = "SELECT BookingServiceDetailID FROM tblBookingServiceDetail Where BookingServiceDetailID = ?";
    private static final String GET_SERVICE_BY_ID = "SELECT * FROM tblService WHERE tblService.ServiceID = ?";
    private static final String CREATE_BOOKING_SERVICE_DETAIL = "INSERT [tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES(?,?,?,?,?)";
    
    public boolean insertBookingServiceDetail(String serviceDetailID, String serviceID, String bookingID,int quantity, int total) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(CREATE_BOOKING_SERVICE_DETAIL);
                stm.setString(1, serviceDetailID);
                stm.setString(2, serviceID);
                stm.setString(3, bookingID);
                stm.setInt(4, quantity);
                stm.setInt(5, total);              
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
    
    public ServiceDTO getServiceByID(String ServiceID) throws SQLException {
        ServiceDTO Service = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_BY_ID);
                ptm.setString(1,ServiceID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("ServiceID");
                    String serviceName = rs.getString("ServiceName");
                    int price = rs.getInt("Price");
                    int status = rs.getInt("Status");
                    String motelID = rs.getString("MotelID");
                    Service = new ServiceDTO(serviceID, serviceName, price, status, motelID);
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
        return Service;
    }
    
    public boolean checkServiceDetailID(String serviceDetailID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_SERVICE_DETAIL_ID);
                ptm.setString(1, serviceDetailID);
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
    
    public boolean updateBookingTotal(int total, String bookingID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(UPDATE_BOOKING_TOTAL);
                stm.setInt(1, total);
                stm.setString(2, bookingID);            
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
    
    public boolean updateBookingServiceDetail(int quantity, int total, String bookingID, String serviceID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(UPDATE_BOOKING_SERVICE_DETAIL);
                stm.setInt(1, quantity);
                stm.setInt(2, total);
                stm.setString(3, bookingID);
                stm.setString(4, serviceID);              
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
    
    public ServiceDTO checkServiceBooking(String bookingID,String ServiceID) throws SQLException {
        ServiceDTO Service = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_SERVICE_BOOKING);
                ptm.setString(1,bookingID);
                ptm.setString(2,ServiceID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("ServiceID");
                    String serviceName = rs.getString("ServiceName");
                    int price = rs.getInt("Price");
                    int quantity = rs.getInt("Quantity");
                    Service = new ServiceDTO(serviceID, serviceName, price, quantity, 1);
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
        return Service;
    }
    
    public List<ServiceDTO> getServiceByRoomID(String roomID) throws SQLException {
        List<ServiceDTO> listService = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_BY_ROOMID);
                ptm.setString(1,roomID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("ServiceID");
                    String serviceName = rs.getString("ServiceName");
                    int price = rs.getInt("Price");
                    int status = rs.getInt("Status");
                    listService.add(new ServiceDTO(serviceID, serviceName, price, status, ""));
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
        return listService;
    }
    
    public boolean insertService(ServiceDTO service) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(CREATE);
                stm.setString(1, service.getServiceId());
                stm.setString(2, service.getName());
                stm.setInt(3, service.getPrice());
                stm.setInt(4, service.getStatus());
                stm.setString(5, service.getMotelID());
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
    
    public boolean checkServiceID(String serviceID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_SERVICEID);
                ptm.setString(1, serviceID);
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
    
    public boolean updateService(ServiceDTO service) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_SERVICE);
                ptm.setString(1, service.getName());
                ptm.setInt(2, service.getPrice());
                ptm.setString(3, service.getServiceId());
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
    
    public boolean deleteService(String serviceID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE_SERVICE);
                ptm.setString(1, serviceID);
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
    
    public List<ServiceDTO> getServiceBooking(String bookingID) throws SQLException {
        List<ServiceDTO> listService = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_BOOKING);
                ptm.setString(1, bookingID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("ServiceID");
                    String serviceName = rs.getString("ServiceName");
                    int price = rs.getInt("Price");
                    int quantity = rs.getInt("Quantity");
                    listService.add(new ServiceDTO(serviceID, serviceName, price, quantity,1));
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
        return listService;
    }
        
public List<ServiceDTO> searchservice(String motelID) throws SQLException {
        List<ServiceDTO> listService = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE);
                ptm.setString(1,motelID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("ServiceID");
                    String serviceName = rs.getString("ServiceName");
                    String motelName = rs.getString("Name");
                    int price = rs.getInt("Price");
                    int status = rs.getInt("Status");
                    listService.add(new ServiceDTO(serviceID, serviceName, price, status, motelName));
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
        return listService;
    }

}

