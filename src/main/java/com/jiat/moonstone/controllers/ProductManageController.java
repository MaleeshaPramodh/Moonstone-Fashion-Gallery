package com.jiat.moonstone.controllers;

import com.jiat.moonstone.entity.Product;
import com.jiat.moonstone.util.HibernateUtil;
import org.baswell.routes.HttpMethod;
import org.baswell.routes.Route;
import org.baswell.routes.Routes;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Routes(value = "/productmanage")
public class ProductManageController {
    Session session = HibernateUtil.getSessionFactory().openSession();
    @Route
    public String get(HttpServletRequest request){
        Query query = session.createQuery("select it from Product it");
        try{
            List<Product> products = query.list();
            request.setAttribute("products", products);
            System.out.println(products);
        }catch (NoResultException e){
            System.out.println("no result");
        }
        return "adminpanel/productmanage.jsp";
    }
    @Route(value = "/add-products", respondsToMethods = {HttpMethod.POST})
    public String addItems(HttpServletRequest request) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        Product p = new Product();
        p.setPname(request.getParameter("pname"));
        p.setCode(request.getParameter("code"));
        p.setQty(request.getParameter("qty"));
        p.setSize(request.getParameter("size"));
        p.setPrice(Double.parseDouble(request.getParameter("price")));
        p.setDescription(request.getParameter("description"));
        p.setPimg(request.getParameter("pimg"));


        Transaction transaction = session.beginTransaction();
        session.save(p);
        transaction.commit();
        session.close();

        return "redirect:/productmanage";
    }
}
