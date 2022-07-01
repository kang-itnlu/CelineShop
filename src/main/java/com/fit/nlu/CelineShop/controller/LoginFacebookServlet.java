package com.fit.nlu.CelineShop.controller;


import com.fit.nlu.CelineShop.util.Constant;
import com.fit.nlu.CelineShop.util.RestFB;
import com.restfb.types.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;

@WebServlet(name = "LoginFacebookServlet", value = "/login-facebook")
public class LoginFacebookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher(Constant.Path.LOGIN);
            dis.forward(request, response);
        } else {
            String accessToken = RestFB.getToken(code);
            User user = RestFB.getUserInfo(accessToken);
            com.fit.nlu.CelineShop.model.User u = new com.fit.nlu.CelineShop.model.User();
            u.setUsername(user.getName());
            u.setEmail(user.getEmail());
            u.setName(user.getName());
            u.setFacebook(user.getName());
            u.setAvatar("https://graph.facebook.com/"+ user.getId() + "/picture");
            u.setRoleId(2);
            HttpSession session = request.getSession(true);
            session.setAttribute("account", u);
            response.sendRedirect(request.getContextPath() + "/waiting");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
