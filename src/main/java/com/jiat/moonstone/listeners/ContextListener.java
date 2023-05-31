package com.jiat.moonstone.listeners;

import com.jiat.moonstone.providers.MailServiceProvider;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        MailServiceProvider.getInstance().start();
        System.out.println("MailServiceProvider: started...");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        MailServiceProvider.getInstance().shutdown();
        System.out.println("MailServiceProvider: shutdown...");
    }
}
