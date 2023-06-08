package com.jiat.moonstone.middlewares;

import org.baswell.routes.BeforeRoute;
import org.baswell.routes.RedirectTo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public abstract class IsAdmin extends Authenticate {

    @BeforeRoute(exceptTags = "any", onlyTags = {"user", "admin"})
    public void handle(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("user_type") != null && session.getAttribute("user_type").equals("ADMIN")) {

        } else {
            throw new RedirectTo("/admin");
        }
    }

}
