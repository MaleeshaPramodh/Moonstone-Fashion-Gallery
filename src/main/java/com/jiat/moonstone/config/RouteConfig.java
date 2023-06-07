package com.jiat.moonstone.config;

import com.jiat.moonstone.controllers.*;
import org.baswell.routes.RoutesFilter;
import org.baswell.routes.RoutingTable;


import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;

@WebFilter(filterName = "RoutesFilter", urlPatterns = "/*")
public class RouteConfig extends RoutesFilter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("init...");
        RoutingTable routing = new RoutingTable();
        routing
                .add(new HomeController())
                .add(new LoginController())
                .add(new RegisterController())
                .add(new EmailVerifyController())
                .add(new ProductsController())
                .add(new GalleryController())
                .add(new AboutUsController())
                .add(new ViewProductController())

                .add(new AdminHomeController())
                .add(new AdminUserControl())
                .add(new ProductManageController())
                .build();
    }
}
