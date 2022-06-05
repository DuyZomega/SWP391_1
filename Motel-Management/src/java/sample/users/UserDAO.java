/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.users;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import sample.utils.DBUtils;

/**
 *
 * @author Bao
 */
public class UserDAO {
    private static final String LOGIN = "SELECT UserID, FullName, Role FROM tblUser WHERE UserID=? AND Password=?";
    
    public UserDTO checkLogin(String userId, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userId);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String fullName = rs.getString("FullName");
                    String role = rs.getString("Role");
                    user = new UserDTO(userId, fullName, password, role);
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
        return user;
    }


public UserDTO checkRole(String userId) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT ROLE FROM tblUsers "
                    + " WHERE USERID=? ";
            stm = conn.prepareStatement(sql);
            stm.setString(1, userId);
            rs = stm.executeQuery();
            if (rs.next()) {
                String role = rs.getString("ROLE");
                user = new UserDTO(userId, "", role, "");
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    }

public List<UserDTO> getListUser(String search) throws SQLException {
        List<UserDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT USERID, FULLNAME, IMAGE, GENDER, BIRTHDAY,CITIZEN NUMBER, PHONE, GMAIL, ADDRESS, PASSWORD, ROLE, STATUS FROM tblUsers "
                        + " WHERE FULLNAME LIKE ? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, "%" + search + "%");
                rs = stm.executeQuery();
                while (rs.next()) {
                    String userId = rs.getString("userID");
                    String fullName = rs.getString("fullName");
                    String image = rs.getString("image");
                    int gender = rs.getInt("gender");
                    String birthDay = rs.getString("birthDay");
                    String citizenNumber = rs.getString("citizenNumber");
                    String phone = rs.getString("phone");
                    String gmail = rs.getString("gmail");
                    String address = rs.getString("address");
                    String password = "***";
                    String role = rs.getString("role");
                    int status = rs.getInt("status");
                    list.add(new UserDTO(userId, fullName, image, gender, birthDay, citizenNumber, phone, gmail, address, password, role, status));
                }
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

public boolean deleteUser(String userID) throws SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "DELETE tblUsers "
                        + " WHERE USERID=? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, userID);
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

public boolean updateUser(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = " UPDATE tblUsers "
                        + " SET fullname=?, image=?, gender=?, birthDay=?, citizenNumber=?, phone=?, gmail=?, address=?, password=?, role=?, status=? "
                        + " WHERE userId=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, user.getFullName());
                stm.setString(2, user.getImage());
                stm.setInt(3, user.getGender());
                stm.setString(4, user.getBirthDay());
                stm.setString(5, user.getCitizenNumber());
                stm.setString(6, user.getPhone());
                stm.setString(7, user.getGmail());
                stm.setString(8, user.getAddress());
                stm.setString(9, user.getPassword());
                stm.setString(10, user.getRole());
                stm.setInt(11, user.getStatus());
                stm.setString(12, user.getUserId());
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
public boolean checkDuplcate(String userId) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT USERID FROM tblUsers "
                        + " WHERE userID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, userId);
                rs = stm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
 public boolean insertUser(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tblUsers(USERID, FULLNAME, ROLE, PASSWORD) "
                        + " VALUES(?, ?, ?, ?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, user.getUserId());
                stm.setString(2, user.getFullName());
                stm.setString(3, user.getRole());
                stm.setString(4, user.getPassword());
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

    public boolean insertUserNew(UserDTO user) throws SQLException, ClassNotFoundException, NamingException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tblUsers(USERID, FULLNAME, IMAGE, GENDER, BIRTHDAY,CITIZEN NUMBER, PHONE, GMAIL, ADDRESS, PASSWORD, ROLE, STATUS ) "
                        + " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, user.getFullName());
                stm.setString(2, user.getImage());
                stm.setInt(3, user.getGender());
                stm.setString(4, user.getBirthDay());
                stm.setString(5, user.getCitizenNumber());
                stm.setString(6, user.getPhone());
                stm.setString(7, user.getGmail());
                stm.setString(8, user.getAddress());
                stm.setString(9, user.getPassword());
                stm.setString(10, user.getRole());
                stm.setInt(11, user.getStatus());
                stm.setString(12, user.getUserId());
                check = stm.executeUpdate() > 0;
            }
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
}

