package com.jiat.moonstone.controllers;

import org.baswell.routes.Route;
import org.baswell.routes.Routes;

import javax.servlet.http.HttpServletRequest;

@Routes
public class GalleryController {
    @Route("/gallery")
    public String index(HttpServletRequest request){
        System.out.println("gallery");
        return "frontend/Gallery.jsp";
    }
}
