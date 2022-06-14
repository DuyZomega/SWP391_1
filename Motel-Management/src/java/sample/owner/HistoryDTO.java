/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.owner;

/**
 *
 * @author Bao
 */
public class HistoryDTO {
    String bookingID;
    String motelID;
    String roomID;
    String userID;
    String userName;
    String status;  
    int NumberService;
    String payType;
    String date;
    int total;

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public String getMotelID() {
        return motelID;
    }

    public void setMotelID(String motelID) {
        this.motelID = motelID;
    }

    public String getRoomID() {
        return roomID;
    }

    public void setRoomID(String roomID) {
        this.roomID = roomID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getNumberService() {
        return NumberService;
    }

    public void setNumberService(int NumberService) {
        this.NumberService = NumberService;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public HistoryDTO() {
        this.bookingID = "";
        this.motelID = "";
        this.roomID = "";
        this.userID = "";
        this.userName = "";
        this.status = "";
        this.NumberService = 0;
        this.payType = "";
        this.date = "";
        this.total = 0;
    }

    public HistoryDTO(String bookingID, String motelID, String roomID, String userID, String userName, String status, int NumberService, String payType, String date, int total) {
        this.bookingID = bookingID;
        this.motelID = motelID;
        this.roomID = roomID;
        this.userID = userID;
        this.userName = userName;
        this.status = status;
        this.NumberService = NumberService;
        this.payType = payType;
        this.date = date;
        this.total = total;
    }
    
        
    
}
