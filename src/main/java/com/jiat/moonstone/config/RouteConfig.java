package com.jiat.moonstone.config;

import com.jiat.moonstone.controllers.*;
import org.baswell.routes.RoutesConfiguration;
import org.baswell.routes.RoutesFilter;
import org.baswell.routes.RoutingTable;


import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(filterName = "RoutesFilter", urlPatterns = "/*", initParams = {
        @WebInitParam(name = "EXCEPT", value = "/assets/.*")
})
public class RouteConfig extends RoutesFilter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        super.init(filterConfig);
        System.out.println("init...");

        RoutesConfiguration configuration = new RoutesConfiguration();
        configuration.rootForwardPath = "/WEB-INF/views/";
        RoutingTable routing = new RoutingTable(configuration);
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
