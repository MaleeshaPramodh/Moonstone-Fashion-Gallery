package com.jiat.moonstone.controllers;

import org.baswell.routes.HttpMethod;
import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class LoginController {
    @Route("/login")
    public String get(HttpServletRequest request){
        System.out.println("K");
        return "frontend/auth/login.jsp";
    }

    @Route(value = "/login-action", respondsToMethods = {HttpMethod.POST})
    public String loginAction(HttpServletRequest request){
        System.out.println("Login Action");
        return "OK";
    }
}
