/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import sample.utils.DBUtils;

/**
 *
 * @author cao thi phuong thuy
 */
public class VisitDAO {
       public boolean insertVisit(VisitDTO visitDTO) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO [visit_tracking]([id],[time],[ip],[date]) VALUES(?,?,?,?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, visitDTO.getId());
                stm.setLong(2, visitDTO.getTime());
                stm.setString(3, visitDTO.getIp());
                stm.setString(4, visitDTO.getDate());
               check = stm.executeUpdate() > 0 ? true : false;
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;}
}
