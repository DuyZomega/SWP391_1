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
    private String image;
    private String phone;
    private String Desct;
    private String address;
    private String district;
    private String city;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDesct() {
        return Desct;
    }

    public void setDesct(String Desct) {
        this.Desct = Desct;
    }
    
    
    
    public MotelDTO(){
        this.motelID = "";
        this.name = "";
        this.image = "";
        this.phone = "";
        this.Desct = "";
        this.address = "";
        this.district = "";
        this.city = "";
        this.rating = 0;
        this.ownerId = "";
        this.status = 0;
    }

    public MotelDTO(String motelID, String name,String image, String phone, String desct ,String address , String district,String city, double rating, String ownerId, int status) {
        this.motelID = motelID;
        this.name = name;
        this.image = image;
        this.phone = phone;
        this.Desct = desct;
        this.address = address;
        this.district = district;
        this.city = city;
        this.rating = rating;
        this.ownerId = ownerId;
        this.status = status;
    }
    
        public MotelDTO(String motelID, String name, String image, String phone, String address, String district, String city, double rating, String ownerId, int status) {
        this.motelID = motelID;
        this.name = name;
        this.image = image;
        this.phone = phone;
        this.address = address;
        this.district = district;
        this.city = city;
        this.rating = rating;
        this.ownerId = ownerId;
        this.status = status;
    }

    public MotelDTO(String motelID, String name, String image, String phone, String address, String district, double rating, String ownerId, int status) {
        this.motelID = motelID;
        this.name = name;
        this.image = image;
        this.phone = phone;
        this.address = address;
        this.district = district;
        this.rating = rating;
        this.ownerId = ownerId;
        this.status = status;
    }

    public MotelDTO(String motelID, String name, String image, String phone, String address, String district, String city, String ownerId, int status) {
        this.motelID = motelID;
        this.name = name;
        this.image = image;
        this.phone = phone;
        this.address = address;
        this.district = district;
        this.city = city;
        this.ownerId = ownerId;
        this.status = status;
    }

 public MotelDTO(String motelID, String name, String image, String phone, String Desct, double rating,int status) {
        this.motelID = motelID;
        this.name = name;
        this.image = image;
        this.phone = phone;
        this.Desct = Desct;
        this.rating = rating;
        this.status = status;
    }
        
}
