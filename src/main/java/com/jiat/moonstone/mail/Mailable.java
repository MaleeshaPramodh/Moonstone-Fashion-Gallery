package com.jiat.moonstone.mail;

import com.jiat.moonstone.providers.MailServiceProvider;
import com.jiat.moonstone.util.Env;
import io.rocketbase.mail.EmailTemplateBuilder;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public abstract class Mailable implements Runnable{

    private MailServiceProvider mailServiceProvider;
    private EmailTemplateBuilder.EmailTemplateConfigBuilder emailTemplateBuilder;

    public Mailable(){
        mailServiceProvider = MailServiceProvider.getInstance();
        emailTemplateBuilder = EmailTemplateBuilder.builder();
    }

    @Override
    public void run() {
        try {
            Session session = Session.getInstance(mailServiceProvider.getProperties(),
                    mailServiceProvider.getAuthenticator());
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Env.get("app.email")));
            build(message);
            if (message.getRecipients(Message.RecipientType.TO).length > 0){
                Transport.send(message);
                System.out.println("Email Sent Successfully...");
            }else {
                throw new RuntimeException("Email Recipient must not be empty!.");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public abstract void build(Message message) throws MessagingException;

    public EmailTemplateBuilder.EmailTemplateConfigBuilder getEmailTemplateBuilder() {
        return emailTemplateBuilder;
    }

}
