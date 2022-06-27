/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.payment;

import java.sql.Date;

/**
 *
 * @author Admins
 */
public class PaymentDTO {
    private String paymentID;
    private String desct;
    private Date paymentTime;
    private String sender;
    private String receiver;
    private String paymentTypeName;

    public String getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(String paymentID) {
        this.paymentID = paymentID;
    }

    public String getDesct() {
        return desct;
    }

    public void setDesct(String desct) {
        this.desct = desct;
    }

    public Date getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(Date paymentTime) {
        this.paymentTime = paymentTime;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getPaymentTypeName() {
        return paymentTypeName;
    }

    public void setPaymentTypeName(String paymentTypeName) {
        this.paymentTypeName = paymentTypeName;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public PaymentDTO(String paymentID, String desct, Date paymentTime, String sender, String receiver, String paymentTypeName) {
        this.paymentID = paymentID;
        this.desct = desct;
        this.paymentTime = paymentTime;
        this.sender = sender;
        this.receiver = receiver;
        this.paymentTypeName = paymentTypeName;
    }





    
    
}
