package com.fit.nlu.CelineShop.controller;



import com.fit.nlu.CelineShop.model.User;
import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;
import com.fit.nlu.CelineShop.tools.SendEmail;
import com.fit.nlu.CelineShop.util.Constant;
import com.fit.nlu.CelineShop.util.SecurityUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "VerifyController", value = "/verify")
public class VerifyController extends HttpServlet {
    UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("authcode");

        String code = request.getParameter("code");
        if (code.equals(user.getCode())) {
            userService.register(user.getEmail(), user.getUsername(), SecurityUtils.hash(user.getPassword()));
            SendEmail.sendMail(user.getEmail(), "Celine-Welcome", "Welcome to Celine. Your account has been verified!");

            response.sendRedirect(request.getContextPath() + "/login");
        } else {
            SendEmail.sendMail(user.getEmail(), "Celine-Welcome", "Welcome to Celine. Failed to verify your account!");

            request.getRequestDispatcher(Constant.Path.REGISTER).forward(request, response);
        }
    }
}
