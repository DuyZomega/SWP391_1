/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.motel;

/**
 *
 * @author Bao
 */
public class MotelDTO {
    private String motelID;
    private String name;
    private String phone;
    private String address;
    private double rating;
    private String ownerId;
    private int status;

    public String getMotelID() {
        return motelID;
    }

    public void setMotelID(String motelID) {
        this.motelID = motelID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String adminId) {
        this.ownerId = adminId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    
    
    public MotelDTO(){
        this.motelID = "";
        this.name = "";
        this.phone = "";
        this.address = "";
        this.rating = 0;
        this.ownerId = "";
        this.status = 0;
    }

    public MotelDTO(String motelID, String name, String phone, String address, double rating, String ownerId, int status) {
        this.motelID = motelID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.rating = rating;
        this.ownerId = ownerId;
        this.status = status;
    }
    
    
}
