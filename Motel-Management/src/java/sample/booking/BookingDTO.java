/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.booking;

import java.sql.Date;

/**
 *
 * @author Admins
 */
public class BookingDTO {
    private String bookingID;
    private Date bookingDate;
    private String desct;
    private double total;
    private int status;
    private String userID;

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public Date getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getDesct() {
        return desct;
    }

    public void setDesct(String desct) {
        this.desct = desct;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public BookingDTO(String bookingID, Date bookingDate, String desct, double total, int status, String userID) {
        this.bookingID = bookingID;
        this.bookingDate = bookingDate;
        this.desct = desct;
        this.total = total;
        this.status = status;
        this.userID = userID;
    }
    
    
}
