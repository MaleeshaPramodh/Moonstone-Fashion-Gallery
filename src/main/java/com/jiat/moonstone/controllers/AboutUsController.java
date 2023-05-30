package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class AboutUsController {

    @Route("/aboutus")
    public String index(HttpServletRequest request){
        System.out.println("aboutus");
        return "frontend/aboutus.jsp";
    }
}
