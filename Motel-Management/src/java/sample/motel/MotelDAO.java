/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.motel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author Bao
 */
public class MotelDAO {
    private static final String SHOW_MOTEL = "SELECT MotelID, Name, Phone,Image, Address,Ratings,OwnerID,Status FROM tblMotel WHERE OwnerID = ?"; 
    
    public List<MotelDTO> searchMotel(String ownerID) throws SQLException {
        List<MotelDTO> listMotel = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SHOW_MOTEL);
                ptm.setString(1, ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String motelID = rs.getString("MotelID");
                    String name = rs.getString("Name");
                    String image = rs.getString("Image");
                    String phone = rs.getString("Phone");
                    String address = rs.getString("Address");
                    double rating = rs.getDouble("Ratings");
                    String adminID = rs.getString("OwnerID");
                    int status = rs.getInt("Status");
                    listMotel.add(new MotelDTO(motelID, name, image, phone, address, rating, adminID, status));
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
        return listMotel;
    }
}
