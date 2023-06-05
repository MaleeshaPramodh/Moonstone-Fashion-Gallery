package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class ViewProductController {
    @Route("/viewproduct")
    public String index(HttpServletRequest request){
        System.out.println("viewproduct");
        return "frontend/viewproduct.jsp";
    }
}
