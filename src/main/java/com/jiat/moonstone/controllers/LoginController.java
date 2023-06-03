package com.jiat.moonstone.controllers;

import com.jiat.moonstone.entity.User;
import com.jiat.moonstone.util.Encryption;
import com.jiat.moonstone.util.HibernateUtil;
import org.baswell.routes.HttpMethod;
import org.baswell.routes.Route;
import org.baswell.routes.Routes;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;

@Routes
public class LoginController {
    @Route("/login")
    public String get(HttpServletRequest request){
        return "frontend/auth/login.jsp";
    }

    @Route(value = "/login-action", respondsToMethods = {HttpMethod.POST})
    public String loginAction(HttpServletRequest request){
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<User> query = session.createQuery("from users where email=:e and password=:p", User.class);
        query.setParameter("e", email);
        query.setParameter("p", Encryption.encrypt(password));
        try {
            User user = query.getSingleResult();
            if (!user.isActive()){
                return "redirect:/";
            }else if(user.getEmail_verified_at() == null){
                return "redirect:/";
            }else {
                request.getSession().setAttribute("user", user.getId());
                return "redirect:/";
            }
        }catch (NoResultException e){
            request.getSession().setAttribute("error", "Invalid Username or Password!");
            return "redirect:/login";
        }
    }
}
