package com.jiat.moonstone.controllers;

import com.jiat.moonstone.entity.Product;
import com.jiat.moonstone.util.HibernateUtil;
import org.baswell.routes.Route;
import org.baswell.routes.Routes;
import org.hibernate.Query;
import org.hibernate.Session;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("select it from Product it");
        try{
            List<Product> products = query.list();
            request.setAttribute("products", products);
            System.out.println(products);
        }catch (NoResultException e){
            System.out.println("no result");
        }
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

    @Route("/cart")
    public String cart(HttpServletRequest request){
        System.out.println("cart");
        return "frontend/cart.jsp";
    }

    @Route("/checkout")
    public String checkout(HttpServletRequest request){
        System.out.println("checkout");
        return "frontend/checkout.jsp";
    }
}
