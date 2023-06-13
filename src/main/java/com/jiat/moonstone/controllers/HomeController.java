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

    @Route("/gallery")
    public String gallery(HttpServletRequest request){
        System.out.println("gallery");
        return "frontend/Gallery.jsp";
    }

    @Route("/products")
    public String products(HttpServletRequest request){
        System.out.println("product");
        return "frontend/products.jsp";
    }

    @Route("/viewproduct")
    public String viewproduct(HttpServletRequest request){
        System.out.println("viewproduct");
        return "frontend/viewproduct.jsp";
    }

    @Route("/aboutus")
    public String aboutus(HttpServletRequest request){
        System.out.println("about us");
        return "frontend/aboutus.jsp";
    }

    @Route("/checkout")
    public String checkout(HttpServletRequest request){
        System.out.println("about us");
        return "frontend/checkout.jsp";
    }

}
