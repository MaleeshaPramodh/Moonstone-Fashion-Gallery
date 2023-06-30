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
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Statement;
import java.util.List;

@Routes(value = "/productmanage")
public class ProductManageController {
    Session session = HibernateUtil.getSessionFactory().openSession();

    @Route
    public String get(HttpServletRequest request) {
        Query query = session.createQuery("select it from Product it");
        try {
            List<Product> products = query.list();
            request.setAttribute("products", products);
            System.out.println(products);
        } catch (NoResultException e) {
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

    @Route(value = "/delete-products", respondsToMethods = {HttpMethod.POST})
    public String doPost(HttpServletRequest request) {
        Query query = session.createQuery("delete from Product where id=:id");
        try {
            List<Product> products = query.list();
            request.setAttribute("id", products);
            System.out.println(products);
        } catch (NoResultException e) {
            System.out.println("no result");
        }
        return "adminpanel/productmanage.jsp";
    }

    @Route(value = "/update-products", respondsToMethods = {HttpMethod.POST})
    public String update(HttpServletRequest request) {


        Query query = session.createQuery("UPDATE Product SET pname=:pname, code=:code, qty=:qty, size=:size, price=:price, description=:description, pimg=:pimg WHERE id=:id");

        query.setParameter("id", 4L);

        Transaction transaction = session.beginTransaction();

        query.executeUpdate();

        transaction.commit();

        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Product> cqu =  cb.createQuery(Product.class);
        Root<Product> root = cqu.from(Product.class);
        cqu.select(root);

        List<Product> list =  session.createQuery(cqu).list();
        list.forEach(user -> {
//          System.out.println(user.getEmail());
        });
        return "adminpanel/productmanage.jsp";
    }

}
