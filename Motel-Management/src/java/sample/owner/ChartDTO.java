/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.owner;

/**
 *
 * @author Bao
 */
public class ChartDTO {
    private String motelID;
    private String date;
    private int income;

    public String getMotelID() {
        return motelID;
    }

    public void setMotelID(String motelID) {
        this.motelID = motelID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getIncome() {
        return income;
    }

    public void setIncome(int income) {
        this.income = income;
    }

    public ChartDTO(String motelID, String date, int income) {
        this.motelID = motelID;
        this.date = date;
        this.income = income;
    }
    
    
}
