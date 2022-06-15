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
private static final String SHOWLIST_MOTEL = "SELECT MotelID,tblMotel.Name, tblMotel.image, tblMotel.phone, desct, tblMotel.address, tblDistrict.Name AS DistrictName,tblCity.Name AS CityName,Ratings,tblUser.FullName AS FullName,tblMotel.Status FROM tblMotel,tblDistrict,tblCity, tblUser WHERE tblMotel.DistrictID = tblDistrict.DistrictID AND tblDistrict.CityID = tblCity.CityID AND tblMotel.OwnerID= tblUser.UserID AND tblMotel.Status = 1";
public List<MotelDTO> getListMotel() throws SQLException {
         List<MotelDTO> listMotel = new ArrayList<>();
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
                    String image = rs.getString("image");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String Desct = rs.getString("Desct");
                    String address = rs.getString("address");
                    String district = rs.getString("DistrictName");
                    String city = rs.getString("CityName");
                    double rating = rs.getDouble("Ratings");
                    String ownerId = rs.getString("FullName");
                    int status = rs.getInt("status");
                    listMotel.add(new MotelDTO(motelID, name, image, phone, Desct, address, district, city, rating, ownerId, status));
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

private static final String FILTER_MOTEL = "SELECT MotelID,tblMotel.Name, tblMotel.image, tblMotel.phone, desct, tblMotel.address, tblDistrict.Name AS DistrictName,tblCity.Name AS CityName,Ratings,tblUser.FullName AS FullName,tblMotel.Status FROM tblMotel,tblDistrict,tblCity, tblUser WHERE tblMotel.DistrictID = ? AND tblDistrict.CityID = tblCity.CityID AND tblMotel.OwnerID= tblUser.UserID AND tblMotel.Status = 1";
public List<MotelDTO> getFilterMotel() throws SQLException {
         List<MotelDTO> listMotel = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(FILTER_MOTEL);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String motelID = rs.getString("MotelID");
                    String image = rs.getString("image");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String Desct = rs.getString("Desct");
                    String address = rs.getString("address");
                    String district = rs.getString("DistrictName");
                    String city = rs.getString("CityName");
                    double rating = rs.getDouble("Ratings");
                    String ownerId = rs.getString("FullName");
                    int status = rs.getInt("status");
                    listMotel.add(new MotelDTO(motelID, name, image, phone, Desct, address, district, city, rating, ownerId, status));
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
    /*admin*/
    public boolean updateMotel(MotelDTO motel) throws SQLException {
       boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = " UPDATE tblMotel SET name=?, image=?,desct=?, phone=?,ratings=?, status=? WHERE motelID=? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, motel.getName());
                stm.setString(2, motel.getImage());
                stm.setString(3, motel.getDesct());
                stm.setString(4, motel.getPhone());
                stm.setDouble(5, motel.getRating());
                stm.setInt(6, motel.getStatus());
                stm.setString(7, motel.getMotelID());
                check = stm.executeUpdate() > 0 ? true : false;
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
    
    /*==========*/
       private static final String INFO_MOTEL = "SELECT MotelID,tblMotel.Name, tblMotel.image, tblMotel.phone, desct, tblMotel.address, tblDistrict.Name AS DistrictName,tblCity.Name AS CityName,Ratings,tblUser.FullName AS FullName,tblMotel.Status FROM tblMotel,tblDistrict,tblCity, tblUser WHERE MOTELID = ? AND tblMotel.DistrictID = tblDistrict.DistrictID AND tblDistrict.CityID = tblCity.CityID AND tblMotel.OwnerID= tblUser.UserID";
     
    public List<MotelDTO> getInfo(String motelID) throws SQLException {
         List<MotelDTO> listMotel = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(INFO_MOTEL);
                ptm.setString(1, motelID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String image = rs.getString("image");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String Desct = rs.getString("Desct");
                    String address = rs.getString("address");
                    String district = rs.getString("DistrictName");
                    String city = rs.getString("CityName");
                    double rating = rs.getDouble("Ratings");
                    String ownerId = rs.getString("FullName");
                    int status = rs.getInt("status");
                    listMotel.add(new MotelDTO(motelID, name, image, phone, Desct, address, district, city, rating, ownerId, status));
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
    
//     public boolean detailUser(MotelDTO motel) throws SQLException {
//        boolean check = false;
//        Connection conn = null;
//        PreparedStatement stm = null;
//        try {
//            conn = DBUtils.getConnection();
//            if (conn != null) {
//                String sql = " UPDATE tblUser SET fullname=?, image=?, DateOfBirth=?, citizenNumber=?, phone=?, gmail=?, address=?, role=?, status=?, gender=? WHERE userId=?";
//                stm = conn.prepareStatement(sql);
//                stm.setString(1, motel.getName());
//                stm.setString(2, motel.getImage());
//                stm.setString(3, motel.getAddress());
//                stm.setString(4, motel.getCity());
//                stm.setString(5, motel.getDistrict());
//                stm.setString(6, motel.getDesct());
//                stm.setString(7, motel.getPhone());
//                stm.setInt(8, motel.getStatus());
//                stm.setString(9, motel.getMotelID());
//                check = stm.executeUpdate() > 0 ? true : false;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (stm != null) {
//                stm.close();
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        }
//        return check;
//    }
     
    public boolean deleteMotel(String motelID) throws SQLException {
         boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPDATE tblMotel SET status = '0' WHERE motelID = ? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, motelID);
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
        return result;
    
    }
    
    /*admin*/
}
