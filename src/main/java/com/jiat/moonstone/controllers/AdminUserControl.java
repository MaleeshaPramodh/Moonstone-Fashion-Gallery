package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class AdminUserControl {
    @Route("/usercontrol")
    public String index(HttpServletRequest request){
        System.out.println("user control");
        return "adminpanel/usercontrol.jsp";
    }
}
