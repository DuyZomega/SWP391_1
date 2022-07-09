/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.admin;

/**
 *
 * @author cao thi phuong thuy
 */

public class VisitDTO {
    private String id ;
    private long time;
    private String ip;
    private String date;

    public VisitDTO(String id, long time, String ip, String date) {
        this.id = id;
        this.time = time;
        this.ip = ip;
        this.date = date;
    }

    public VisitDTO() {
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getId() {
        return id;
    }

    public long getTime() {
        return time;
    }

    public String getIp() {
        return ip;
    }

    public String getDate() {
        return date;
    }
}
