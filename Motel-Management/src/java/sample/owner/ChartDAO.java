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
import sample.service.ServiceDTO;
import sample.utils.DBUtils;

/**
 *
 * @author Bao
 */
public class ChartDAO {
    private static final String GET_CHART_OVERVIEW = "SELECT CAST(a.BookingDate as DATE) as BookingDate, a.MotelID, SUM(a.Total) as total \n" +
                                                     "FROM (SELECT distinct m.MotelID,b.BookingID,b.BookingDate ,b.Total  FROM tblMotel as m, tblRoomType as rt, tblRoom as r, tblBookingDetail as bd ,tblBooking as b\n" +
                                                     "WHERE m.MotelID = rt.MotelID AND rt.RoomTypeID = r.RoomTypeID AND r.RoomID = bd.RoomID AND bd.BookingID = b.BookingID AND m.OwnerID = ? AND (b.Status = 1 OR b.Status = 2 ) AND b.BookingDate between (SELECT DATEADD(wk, 0, DATEADD(DAY, 1-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE())))) and (SELECT DATEADD(wk, 1, DATEADD(DAY, 0-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE())))) ) a \n" +
                                                     "GROUP BY  CAST(a.BookingDate as DATE), a.MotelID \n" +
                                                     "ORDER BY CAST(a.BookingDate as DATE)";
    
    private static final String GET_CHART_STATICTICAL = "SELECT CAST(a.BookingDate as DATE) as BookingDate, a.MotelID, SUM(a.Total) as total \n" +
                                                        "FROM (SELECT distinct m.MotelID,b.BookingID,b.BookingDate ,b.Total  FROM tblMotel as m, tblRoomType as rt, tblRoom as r, tblBookingDetail as bd ,tblBooking as b\n" +
                                                        "WHERE m.MotelID = rt.MotelID AND rt.RoomTypeID = r.RoomTypeID AND r.RoomID = bd.RoomID AND bd.BookingID = b.BookingID AND m.OwnerID = ? AND (b.Status = 1 OR b.Status = 2 ) AND b.BookingDate between ( SELECT DATEFROMPARTS(YEAR(GETDATE()), 1, 1) ) and ( SELECT DATEFROMPARTS(YEAR(GETDATE()), 12, 31) ) )a \n" +
                                                        "GROUP BY  CAST(a.BookingDate as DATE), a.MotelID \n" +
                                                        "ORDER BY CAST(a.BookingDate as DATE)";
    
    
    public List<ChartDTO> getDataChartStatical(String ownerID) throws SQLException {
        List<ChartDTO> listData = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_CHART_STATICTICAL);
                ptm.setString(1, ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingDate = rs.getString("BookingDate");
                    String motelID = rs.getString("MotelID");
                    int totalPrice = rs.getInt("total");
                    listData.add(new ChartDTO(motelID, bookingDate, totalPrice));
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
        return listData;
    }
    
    public List<ChartDTO> getDataChartOverview(String ownerID) throws SQLException {
        List<ChartDTO> listData = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_CHART_OVERVIEW);
                ptm.setString(1, ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingDate = rs.getString("BookingDate");
                    String motelID = rs.getString("MotelID");
                    int totalPrice = rs.getInt("total");
                    listData.add(new ChartDTO(motelID, bookingDate, totalPrice));
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
        return listData;
    }
}
