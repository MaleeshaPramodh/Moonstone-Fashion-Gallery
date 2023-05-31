package com.jiat.moonstone.mail;

import io.rocketbase.mail.model.HtmlTextEmail;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;

public class VerificationMail extends Mailable{
    private String to;
    private String verificationCode;

    public VerificationMail(String to, String verificationCode) {
        this.to = to;
        this.verificationCode = verificationCode;
    }

    @Override
    public void build(Message message) throws MessagingException {
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));

        HtmlTextEmail content = getEmailTemplateBuilder()
                .header()
                .logo("https://localhost:8080/moonstone/images/—Pngtree—.png").logoHeight(41)
                .and()
                .text("Welcome to Moonstone Fashion Gallery!").h1().center().and()
                .text("Thanks for Register our site. We’re thrilled to have you on board. To get the most out of Product, do this primary next step:").and()
                .button("Do this Next", "http://localhost:8080/moonstone/").blue().and()
                .text("For reference, here's your login information:").and()
                .attribute()
                .keyValue("Login Page", "{{login_url}}")
                .keyValue("Username", "{{username}}")
                .and()
                .html("If you have any questions, feel free to <a href=\"mailto:{{support_email}}\">email our customer success team</a>. (We're lightning quick at replying.) We also offer <a href=\"{{live_chat_url}}\">live chat</a> during business hours.",
                        "If you have any questions, feel free to email our customer success team\n" +
                                "(We're lightning quick at replying.) We also offer live chat during business hours.").and()
                .text("Cheers,\n" +
                        "The [Product Name] Team").and()
                .copyright("rocketbase").url("https://www.rocketbase.io").suffix(". All rights reserved.").and()
                .footerText("Moonstone Fashion Gallery\n" +
                        "keels Upstairs, Wijerama, Nugegoda.\n" +
                        "Suite 1234").and()
                .footerImage("https://cdn.rocketbase.io/assets/loading/no-image.jpg").width(100).linkUrl("http://localhost:8080/moonstone/").and()
                .build();

        //message.setText("Hello Dev, your verification code is:"+verificationCode);
        message.setContent(content.getHtml(),"text/html");
    }
}
