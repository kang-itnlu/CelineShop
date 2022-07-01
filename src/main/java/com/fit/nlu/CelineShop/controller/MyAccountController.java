package com.fit.nlu.CelineShop.controller;


import com.fit.nlu.CelineShop.model.CartItem;
import com.fit.nlu.CelineShop.model.User;
import com.fit.nlu.CelineShop.services.CartItemService;
import com.fit.nlu.CelineShop.services.CartService;
import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.CartServiceImpl;
import com.fit.nlu.CelineShop.services.impl.CartServiceItemImpl;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(urlPatterns = {"/member/myAccount"})
public class MyAccountController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    CartItemService cartItemService = new CartServiceItemImpl();
    CartService cartService = new CartServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> listCartItem = new ArrayList<CartItem>();
        String id = request.getParameter("id");
        User user = userService.get(Integer.parseInt(id));
        listCartItem = cartItemService.getByUserID(Integer.parseInt(id));
//        String idCart = listCartItem.;
//        request.setAttribute("idCart", idCart);
        String alert = request.getParameter("alert");
        request.setAttribute("alert", alert);
        request.setAttribute("listCartItem", listCartItem);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/view/myAccount.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String alert = "";
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String facebook = request.getParameter("facebook");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String avatar = request.getParameter("avatar");
        int role = Integer.parseInt(request.getParameter("role"));
        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setName(name);
        user.setUsername(username);
        user.setFacebook(facebook);
        user.setEmail(email);
        user.setPassword(password);
        user.setAvatar(avatar);
        user.setAddress(address);
        Pattern pattern = Pattern.compile("^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$");
        Matcher match = pattern.matcher(phone);
//returns a boolean value
        boolean isValid = false;
        isValid = (match.find() && match.group().equals(phone));
        if (isValid) {
            user.setPhone(phone);
        }
        else {
            user.setPhone("");
            alert = "Số điện thoại không hợp lệ!";
        }
        user.setRoleId(role);
        userService.edit(user);
        alert = "Success!";
        User u = userService.get(Integer.parseInt(id));
        HttpSession session = request.getSession(true);
        session.setAttribute("account", u);
        response.sendRedirect(request.getContextPath() + "/member/myAccount?id=" + id + "&alert=" + alert);

    }
}
