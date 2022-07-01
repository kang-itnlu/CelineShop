package com.fit.nlu.CelineShop.controller;


import com.fit.nlu.CelineShop.model.GooglePojo;
import com.fit.nlu.CelineShop.util.Constant;
import com.fit.nlu.CelineShop.util.GoogleUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginGoogleServlet", value = "/login-google")
public class LoginGoogleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher(Constant.Path.LOGIN);
            dis.forward(request, response);
        } else {
            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            com.fit.nlu.CelineShop.model.User u = new com.fit.nlu.CelineShop.model.User();
            u.setUsername(googlePojo.getName()+"");
            u.setEmail(googlePojo.getEmail());
            u.setName(googlePojo.getName());
            u.setAvatar(googlePojo.getPicture());
            u.setRoleId(2);
            HttpSession session = request.getSession(true);
            session.setAttribute("account", u);
          response.sendRedirect(request.getContextPath() + "/waiting");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}