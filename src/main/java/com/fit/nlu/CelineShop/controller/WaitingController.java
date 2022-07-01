package com.fit.nlu.CelineShop.controller;


import com.fit.nlu.CelineShop.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(urlPatterns = "/waiting")
public class WaitingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("account") != null) {
            User u = (User) session.getAttribute("account");
            request.setAttribute("username", u.getUsername());
            if (u.getRoleId() == 1) {
                response.sendRedirect(request.getContextPath() + "/Admin/Welcome");
            } else {
                response.sendRedirect(request.getContextPath() + "/welcome");
            }

        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
