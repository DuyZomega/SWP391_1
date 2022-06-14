/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.admin;

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
public class ReportDAO {
    public List<ReportDTO> getList() throws SQLException {
         List<ReportDTO> listReport = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql="SELECT reportID, tblUser.FullName as fullName, tblMotel.Name as motelName, title, tblReport.desct, tblReport.status FROM tblReport, tblUser, tblMotel WHERE tblReport.userId = tblUser.userId AND tblReport.motelId = tblMotel.motelId";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String reportID = rs.getString("reportID");
                    String fullName = rs.getString("fullName");
                    String motelName = rs.getString("motelName");
                    String title = rs.getString("title");
                    String desct = rs.getString("desct");
                    int status = rs.getInt("status");
                    listReport.add(new ReportDTO(reportID, fullName, motelName, title, desct, status));
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
        return listReport;
    
    }

    public boolean solved(String reportID) throws SQLException {
         boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPDATE tblReport SET status = 1 WHERE reportID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, reportID);
                result = stm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;}
    
}
