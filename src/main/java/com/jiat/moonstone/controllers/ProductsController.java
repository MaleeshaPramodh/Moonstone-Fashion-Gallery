package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;

@Routes
public class ProductsController {
    @Route("/products")
    public String index(HttpServletRequest request){
        System.out.println("product");
        return "frontend/products.jsp";
    }
}
