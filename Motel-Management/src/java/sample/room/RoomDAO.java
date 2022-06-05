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
    private static final String SHOW_ROOM = "SELECT RoomID, Name, Image, Price, Desct, Status, MotelID FROM tblRoom, tblRoomType WHERE MotelID = ? and tblRoom.RoomTypeID = tblRoomType.RoomTypeID ";
    
    public List<RoomDTO> searchRoom(String ownerID) throws SQLException {
        List<RoomDTO> listRoom = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SHOW_ROOM);
                ptm.setString(1,ownerID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String roomID = rs.getString("MotelID");
                    String name = rs.getString("Name");
                    String image = rs.getString("Image");
                    int price = rs.getInt("Price");
                    String desct = rs.getNString("Desct");
                    String motelID = rs.getString("MotelID");
                    int status = rs.getInt("Status");
                    listRoom.add(new RoomDTO(roomID, name, image, price, desct, motelID, status));
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
}
