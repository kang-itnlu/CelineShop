package com.fit.nlu.CelineShop.controller;



import com.fit.nlu.CelineShop.model.User;
import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;
import com.fit.nlu.CelineShop.tools.SendEmail;
import com.fit.nlu.CelineShop.util.Constant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            resp.sendRedirect(req.getContextPath() + "/admin");
            return;
        }
        // Check cookie
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    session = req.getSession(true);
                    session.setAttribute("username", cookie.getValue());
                    resp.sendRedirect(req.getContextPath() + "/admin");
                    return;
                }
            }
        }

        req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");

        UserService service = new UserServiceImpl();
        String alertMsg = "";
        if (email == "" || password == "" || username == "") {
            alertMsg = "Vui lòng không để trống các ô!";
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }
        if (service.checkExistEmail(email)) {
            alertMsg = "Email đã tồn tại!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }
        if (service.checkExistUsername(username)) {
            alertMsg = "Tên người dùng đã tồn tại!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }
        if (password.length() <= 6) {
            alertMsg = "Mật khẩu phải có ít nhất 6 kí tự!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }

//        boolean isSuccess = service.register(username, SecurityUtils.hash(password), email);

//        if (isSuccess) {
        SendEmail sm = new SendEmail();
        String code = sm.getRandom();
        User user = new User(email, username, code, password);
        SendEmail.sendMail(email, "Celine-Email of verification", "Welcome to Celine. Here is your verification code: " + user.getCode() + " .Thanks !");
        HttpSession session = req.getSession();
        session.setAttribute("authcode", user);
        resp.sendRedirect(req.getContextPath() + "/redirect");
//        } else {
//            alertMsg = "System error!";
//            req.setAttribute("alert", alertMsg);
//            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);

    }
}
