package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class HomeController {
    @Route("/")
    public String index(HttpServletRequest request){
        System.out.println("Home");
        return "frontend/index.jsp";
    }

    @Route(value = "/profile", tags = {"auth","user"})
    public String profile(HttpServletRequest request) {
        return "frontend/profile.jsp";
    }
}
