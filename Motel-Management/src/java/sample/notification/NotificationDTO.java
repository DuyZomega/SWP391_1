/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.notification;

import java.sql.Date;

/**
 *
 * @author Admins
 */
public class NotificationDTO {
    public String announcementID;
    public String title;
    public String desct;
    public Date date;
    public String userID;
    private int status;
    public int notificationNumber;

    public NotificationDTO() {
        
    }
    
    
    public String getAnnouncementID() {
        return announcementID;
    }

    public void setAnnouncementID(String announcementID) {
        this.announcementID = announcementID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }



    public String getDesct() {
        return desct;
    }

    public void setDesct(String desct) {
        this.desct = desct;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public int getNotificationNumber() {
        return notificationNumber;
    }

    public void setNotificationNumber(int notificationNumber) {
        this.notificationNumber = notificationNumber;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public NotificationDTO(String announcementID, String title, String desct, Date date, int status, int notificationNumber) {
        this.announcementID = announcementID;
        this.title = title;
        this.desct = desct;
        this.date = date;
        this.status = status;
        this.notificationNumber = notificationNumber;
    }

    public NotificationDTO(int notificationNumber) {
        this.notificationNumber = notificationNumber;
    }

    public NotificationDTO(String announcementID, String title, String desct, Date date, int status) {
        this.announcementID = announcementID;
        this.title = title;
        this.desct = desct;
        this.date = date;
        this.status = status;
    }

    
}
