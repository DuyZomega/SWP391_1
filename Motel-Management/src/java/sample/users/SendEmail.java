/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.users;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.activation.*;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import sample.motel.MotelDAO;
import sample.motel.MotelDTO;

/**
 *
 * @author cao thi phuong thuy
 */
public class SendEmail {

    public static void sendEmail(String email, String bookingID) throws SQLException, UnsupportedEncodingException {
        String orderTable = "";
        String motelInfo = "";
        MotelDAO motel = new MotelDAO();
        List<MotelDTO> lm = motel.getDetailInfoBook(bookingID);
        for (MotelDTO m : lm) {
            motelInfo += m.getName() + "\n Address: " + m.getAddress() + ", " + m.getDistrict() + ", " + m.getCity() +"\n TOTAL :"+ m.getStatus();
        }

        List<MotelDTO> listBooking = motel.getDetailBooking(bookingID);
        for (MotelDTO m : listBooking) {
            orderTable += "\n- Roomtype: " + m.getTypename() + " - Room number: " + m.getNumberRoom() + "(Price: " + m.getMotelprice() + " vnd) - Hour:" + m.getNumberRoomType()+" (h)";
        }
        final String username = "vntphuongthuy.is@gmail.com";
        final String password = "cdyjushrbcpfatgz";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS

        Session session = Session.getInstance(prop,
                new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("vntphuongthuy.is@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(email)
            );
            message.setSubject("Thank you for visiting ROH MOTEL");
            message.setText("Your booking id :  " + bookingID + "\nInfo Motel: " + motelInfo
                    + "\n\n Please check your order: " + orderTable);

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
