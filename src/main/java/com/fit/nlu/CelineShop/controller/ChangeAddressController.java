package com.fit.nlu.CelineShop.controller;

import com.fit.nlu.CelineShop.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "ChangeAddressController", value = "/order/change-address")
public class ChangeAddressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    request.setCharacterEncoding("UTF-8");
    String alert = "";
    HttpSession session = request.getSession();
    User user = (User) session.getAttribute("account");
    user.setAddress(request.getParameter("address"));
        Pattern pattern = Pattern.compile("^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$");
        Matcher match = pattern.matcher(request.getParameter("phone"));
//returns a boolean value
        boolean isValid = false;
        isValid = (match.find() && match.group().equals(request.getParameter("phone")));
        if (isValid) {
            user.setPhone(request.getParameter("phone"));
        }
        else {
            user.setPhone("");
            alert = "Số điện thoại không hợp lệ!";
        }
    user.setPhone(request.getParameter("phone"));
    user.setName(request.getParameter("name"));
    session.setAttribute("account", user);
    alert = "Thông tin của bạn đã được thay đổi!";
    response.sendRedirect(request.getContextPath()+"/member/cart?alert="+alert);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
