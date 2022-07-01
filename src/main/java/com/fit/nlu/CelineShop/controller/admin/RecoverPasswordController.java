package com.fit.nlu.CelineShop.controller.admin;

import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;
import com.fit.nlu.CelineShop.tools.SendEmail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RecoverPasswordController", value = "/Admin/recoverPassword")
public class RecoverPasswordController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/view/admin/view/forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email =request.getParameter("email");

        String password = userService.getPassword(email);
        String alertMsg;
        if(password != null){
            alertMsg = "Mật khẩu đã được gửi vào email của bạn";
            request.setAttribute("alert", alertMsg);
            SendEmail.sendMail(email, "Celine-Email of forgot password", "Welcome to Celine. Here is your hashed password: " + password + " .Launch this link: https://10015.io/tools/sha256-encrypt-decrypt and paste your hashed password to decrypt for getting your original password. Thanks!");

        }
        else{
            alertMsg = "Không tìm thấy tài khoản với email đã nhập!";
            request.setAttribute("alert", alertMsg);
        }
        response.sendRedirect(request.getContextPath()+"/AdminLogin");
    }
}
