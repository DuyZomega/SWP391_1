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

    private static final String SHOW_MOTEL = "SELECT MotelID, tblMotel.Name, Phone,Desct,Image, Address,tblDistrict.Name AS DistrictName,tblCity.Name AS CityName,Ratings,OwnerID,Status FROM tblMotel,tblDistrict,tblCity WHERE OwnerID = ? AND tblMotel.DistrictID = tblDistrict.DistrictID AND tblDistrict.CityID = tblCity.CityID";

    private static final String ADMIN_SHOW_MOTEL = "SELECT MotelID, tblMotel.Name, tblMotel.Phone,tblMotel.Image, tblMotel.Address,tblDistrict.Name AS DistrictName,tblCity.Name AS CityName,Ratings,tblUser.FullName AS FullName ,tblMotel.Status FROM tblMotel,tblDistrict,tblCity, tblUser WHERE tblMotel.OwnerID = tblUser.UserID AND tblMotel.DistrictID = tblDistrict.DistrictID AND tblDistrict.CityID = tblCity.CityID";

    private static final String SHOWLIST_MOTEL = "SELECT MotelID, tblMotel.Name, Phone,Desct,Image, Address,tblDistrict.Name AS DistrictName,tblCity.Name AS CityName,Ratings,OwnerID,Status FROM tblMotel,tblDistrict,tblCity WHERE OwnerID = ? AND tblMotel.DistrictID = tblDistrict.DistrictID AND tblDistrict.CityID = tblCity.CityID";

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
                    String desct = rs.getString("Desct");
                    String address = rs.getString("Address");
                    String districtName = rs.getString("DistrictName");
                    String cityName = rs.getString("CityName");
                    double rating = rs.getDouble("Ratings");
                    String adminID = rs.getString("OwnerID");
                    int status = rs.getInt("Status");
                    listMotel.add(new MotelDTO(motelID, name, image, phone, desct, address, districtName, cityName, rating, adminID, status));
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

    public List<MotelDTO> adminShowMotel() throws SQLException {
        List<MotelDTO> adminMotel = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(ADMIN_SHOW_MOTEL);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String motelID = rs.getString("MotelID");
                    String name = rs.getString("Name");
                    String image = rs.getString("Image");
                    String phone = rs.getString("Phone");
                    String address = rs.getString("Address");
                    String districtName = rs.getString("DistrictName");
                    String cityName = rs.getString("CityName");
                    double rating = rs.getDouble("Ratings");
                    String ownerId = rs.getString("FullName");
                    int status = rs.getInt("Status");
                    adminMotel.add(new MotelDTO(motelID, name, image, phone, address, districtName, cityName, rating, ownerId, status));
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
        return adminMotel;

    }

    public List<MotelDTO> ShowListMotel() throws SQLException {
        List<MotelDTO> showMotel = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SHOWLIST_MOTEL);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String motelID = rs.getString("MotelID");
                    String name = rs.getString("Name");
                    String image = rs.getString("Image");
                    String phone = rs.getString("Phone");
                    String address = rs.getString("Address");
                    String districtName = rs.getString("DistrictName");
                    String cityName = rs.getString("CityName");
                    String ownerId = rs.getString("FullName");
                    int status = rs.getInt("Status");
                    showMotel.add(new MotelDTO(motelID, name, image, phone, address, districtName, cityName, ownerId, status));
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
        return showMotel;

    }
}
