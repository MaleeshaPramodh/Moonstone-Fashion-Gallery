package com.jiat.moonstone.middlewares;

import org.baswell.routes.BeforeRoute;
import org.baswell.routes.RedirectTo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public abstract class IsUser extends Authenticate{
    @BeforeRoute(exceptTags = "any", onlyTags = "user")
    public void handle(HttpServletRequest request) {
        System.out.println("IsUser: handle");
        HttpSession session = request.getSession();
        if (session.getAttribute("user_type") != null && session.getAttribute("user_type").equals("USER")) {

        } else {
            throw new RedirectTo("/");
        }
    }
}
