package com.fit.nlu.CelineShop.controller;

import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;
import com.fit.nlu.CelineShop.util.SecurityUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePasswordController", value = "/member/change-password")
public class ChangePasswordController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/client/view/myAccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword= request.getParameter("newPassword");
        String rePass= request.getParameter("reNewPassword");
        int id =Integer.parseInt(request.getParameter("id"));
        String alert="";
            if(userService.get(id).getPassword().equals(SecurityUtils.hash(oldPassword))){
                if(newPassword.equals(rePass)){
                    userService.changePassword(id, SecurityUtils.hash(newPassword));
                   alert= "Change password success";
                }else{
                   alert= "New password and re-new password not match";
                }
            }else {
               alert= "Old password not match";
            }
            request.setAttribute("id", id);
            response.sendRedirect(request.getContextPath() +"/member/myAccount?id="+id+"&alert="+alert);}
}
