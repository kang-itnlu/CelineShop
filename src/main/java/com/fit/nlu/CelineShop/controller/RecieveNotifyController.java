package com.fit.nlu.CelineShop.controller;

import com.fit.nlu.CelineShop.tools.SendEmail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RecieveNotifyController", value = "/recieveNoti")
public class RecieveNotifyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email__for-noti");
        SendEmail.sendMail(email, "Celine-Email of discount registration", "Welcome to Celine. We will send you notifications as soon as possible. Thanks !");
        request.setAttribute("alert", "Đăng ký thành công!");
        response.sendRedirect(request.getContextPath() + "/welcome");
    }
}
