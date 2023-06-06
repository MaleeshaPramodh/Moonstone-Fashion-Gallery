package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class ProductManageController {
    @Route("/productmanage")
    public String index(HttpServletRequest request){
        System.out.println("product manage");
        return "WEB-INF/jsps/adminpanel/productmanage.jsp";
    }
}
