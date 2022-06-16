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
    private static final String GET_SERVICE = "SELECT  s.ServiceName, s.Status , m.MotelID FROM tblMotel as m, tblService as s WHERE s.MotelID = m.MotelID AND s.Status = 1";
    public ServiceDTO getServiceBooking(String bookingID) throws SQLException {
        ServiceDTO service = null;
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
                    service = new ServiceDTO(serviceID, serviceName, price, quantity,1);
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
        return service;
    }
public List<ServiceDTO> searchservice(String ownerID) throws SQLException {
        List<ServiceDTO> listService = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE);
                ptm.setString(1,ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String motelID = rs.getString("MotelID");
                    String serviceName = rs.getString("ServiceName");
                    int status = rs.getInt("Status");
                    listService.add(new ServiceDTO(serviceName,status,motelID));
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

