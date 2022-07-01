package com.fit.nlu.CelineShop.controller.admin;




import com.fit.nlu.CelineShop.model.User;
import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;
import com.fit.nlu.CelineShop.util.SecurityUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;


@WebServlet(urlPatterns = {"/Admin/user/add"})
public class UserAddController extends HttpServlet {
    private static final long SerialVersionUID = 1L;
    UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eString = request.getParameter("e");
        if (eString != null) {
            if (eString.equals("1")) {
                request.setAttribute("errMsg", "Username da ton tai!!!");
            }
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/addAccount.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        User user = new User();
        user.setEmail(request.getParameter("email"));
        user.setUsername(request.getParameter("username"));
        user.setPassword(SecurityUtils.hash(request.getParameter("password")));
        user.setRoleId(Integer.parseInt(request.getParameter("role")));
        user.setAvatar(request.getParameter("avatar"));
        userService.insert(user);



        response.sendRedirect(request.getContextPath() + "/Admin/user/list");


    }
}

