package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class AdminHomeController {
    @Route("/admin")
    public String index(HttpServletRequest request){
        System.out.println("admin home");
        return "adminpanel/adminhome.jsp";
    }

    @Route("/usercontrol")
    public String usercontrol(HttpServletRequest request){
        System.out.println("user control");
        return "adminpanel/usercontrol.jsp";
    }

    @Route("/productmanage")
    public String productmanage(HttpServletRequest request){
        System.out.println("product manage");
        return "adminpanel/productmanage.jsp";
    }
}
