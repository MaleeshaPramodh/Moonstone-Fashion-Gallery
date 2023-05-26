package com.jiat.moonstone;

import com.jiat.moonstone.service.MailService;
import com.jiat.moonstone.util.Encryption;

public class Test {
    public static void main(String[] args) {
        //Encryption.encrypt("1234");
        //String name = Env.get("mailtrap.host");
        // System.out.println(name);
        MailService.sendMail("maleesha.pramodh.mph@gmail.com", null);
    }
}
