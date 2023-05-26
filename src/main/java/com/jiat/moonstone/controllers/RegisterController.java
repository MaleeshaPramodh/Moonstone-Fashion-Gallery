package com.jiat.moonstone.controllers;

import com.jiat.moonstone.entity.User;
import com.jiat.moonstone.util.Encryption;
import com.jiat.moonstone.util.HibernateUtil;
import org.baswell.routes.HttpMethod;
import org.baswell.routes.Route;
import org.baswell.routes.Routes;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;

@Routes
public class RegisterController {
    @Route(value = "/register", respondsToMethods = HttpMethod.GET)
    public String index(HttpServletRequest request){
        return "frontend/auth/register.jsp";
    }

    @Route(value = "/register", respondsToMethods = HttpMethod.POST)
    public String register(HttpServletRequest request){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from users where email=:email");
        query.setParameter("email", request.getParameter("email"));
        try {
            query.getSingleResult();
            request.getSession().setAttribute("error", "Email already exists.");
            //return "frontend/auth/register.jsp";
            return "redirect:/register";
        }catch (NoResultException e){

        }
        User user = new User();
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(Encryption.encrypt(request.getParameter("password")));

        Transaction transaction = session.beginTransaction();

        session.save(user);

        transaction.commit();

        session.close();

        return "frontend/auth/login.jsp";
    }
}
