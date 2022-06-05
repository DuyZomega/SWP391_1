/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.users;

/**
 *
 * @author Bao
 */
public class UserDTO {
    private String userId;
    private String fullName;
    private String image;
    private int gender;
    private String birthDay;
    private String citizenNumber;
    private String phone;
    private String gmail;
    private String address;
    private String password;
    private String role;
    private int status;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getCitizenNumber() {
        return citizenNumber;
    }

    public void setCitizenNumber(String citizenNumber) {
        this.citizenNumber = citizenNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }


    public UserDTO(String userId, String fullName, String image, int gender, String birthDay, String citizenNumber, String phone, String gmail, String address, String password, String role, int status) {
        this.userId = userId;
        this.fullName = fullName;
        this.image = image;
        this.gender = gender;
        this.birthDay = birthDay;
        this.citizenNumber = citizenNumber;
        this.phone = phone;
        this.gmail = gmail;
        this.address = address;
        this.password = password;
        this.role = role;
        this.status = status;
    }

    public UserDTO(String userId, String fullName, String password, String role) {
        this.userId = userId;
        this.fullName = fullName;
        this.password = password;
        this.role = role;
    }

    public UserDTO(String userId, String fullName, String phone, String gmail, String address, String password, String role) {
        this.userId = userId;
        this.fullName = fullName;
        this.phone = phone;
        this.gmail = gmail;
        this.address = address;
        this.password = password;
        this.role = role;
    }
    
}