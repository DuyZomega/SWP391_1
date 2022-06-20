/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.room;

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
public class RoomDAO {
    private static final String SHOW_ROOM = "SELECT RoomID, Name, tblRoomType.TypeName, Price, Desct, tblRoom.Status, MotelID FROM tblRoom, tblRoomType WHERE MotelID = ? and tblRoom.RoomTypeID = tblRoomType.RoomTypeID AND (tblRoom.Status = 0 OR tblRoom.Status = 1 ) ";
    private static final String CHECK_ROOMID = "SELECT RoomID FROM tblRoom Where RoomID = ? ";
    private static final String CHECK_ROOMTYPEID = "SELECT RoomTypeID FROM tblRoomType Where RoomTypeID = ?";
    private static final String CREATE = "INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES(?,?,?,?,?,?,?)";
    private static final String CREATE_ROOMTYPE = "INSERT [tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID]) VALUES(?,?,?,?,?,?)";
    private static final String DELETE_ROOM = "UPDATE tblRoom SET Status = 2 WHERE RoomID = ?";
    private static final String UPDATE_ROOM = "UPDATE tblRoom SET Name = ?, RoomTypeID = ? WHERE RoomID = ?";

    public boolean updateRoom(String roomID, String Name, String roomTypeID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_ROOM);
                ptm.setString(1, Name);
                ptm.setString(2, roomTypeID);
                ptm.setString(3, roomID);
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

    public boolean deleteRoom(String roomID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE_ROOM);
                ptm.setString(1, roomID);
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

    public boolean createRoomType(String roomTypeID, String typeName, int price, String image, String desct, String motelID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CREATE_ROOMTYPE);
                ptm.setString(1, roomTypeID);
                ptm.setString(2, typeName);
                ptm.setInt(3, price);
                ptm.setString(4, image);
                ptm.setString(5, desct);
                ptm.setString(6, motelID);
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

    public boolean createRoom(RoomDTO room) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CREATE);
                ptm.setString(1, room.getRoomId());
                ptm.setString(2, room.getName());
                ptm.setString(3, "...");
                ptm.setString(4, room.getDesc());
                ptm.setInt(5, room.getStatus());
                ptm.setString(6, room.getMotelID());
                ptm.setString(7, room.getRoomType());
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

    public boolean checkRoomID(String roomID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_ROOMID);
                ptm.setString(1, roomID);
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

    public boolean checkRoomTypeID(String roomTypeID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_ROOMTYPEID);
                ptm.setString(1, roomTypeID);
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

    public List<RoomDTO> searchRoom(String ownerID) throws SQLException {
        List<RoomDTO> listRoom = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SHOW_ROOM);
                ptm.setString(1, ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String roomID = rs.getString("RoomID");
                    String name = rs.getString("Name");
                    String typeName = rs.getString("TypeName");
                    int price = rs.getInt("Price");
                    String desct = rs.getNString("Desct");
                    String motelID = rs.getString("MotelID");
                    int status = rs.getInt("Status");
                    listRoom.add(new RoomDTO(roomID, name, typeName, price, desct, motelID, status));
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
        return listRoom;
    }
    private static final String GET_ROOMTYPE = "select rt.RoomTypeID ,rt.TypeName, rt.Image, rt.Price, rt.Desct \n"
            + "from tblRoomType as rt, tblMotel as m \n"
            + "WHERE m.MotelID = rt.MotelID AND rt.Status = 1 AND m.MotelID= ? ";

    public List<RoomTypeDTO> getRoomType(String motelID) throws SQLException {
        List<RoomTypeDTO> listService = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ROOMTYPE);
                ptm.setString(1, motelID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String roomTypeID = rs.getString("RoomTypeID");
                    String typeName = rs.getString("TypeName");
                    String image = rs.getString("Image");
                    String desct = rs.getString("Desct");
                    int price = rs.getInt("Price");
                    listService.add(new RoomTypeDTO(roomTypeID, typeName, price, motelID, image, desct));
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
