package com.fit.nlu.CelineShop.controller.admin;



import com.fit.nlu.CelineShop.services.CartItemService;
import com.fit.nlu.CelineShop.services.impl.CartServiceItemImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Admin/order/delete")
public class OrderDeleteController extends HttpServlet {
    CartItemService cartItemService = new CartServiceItemImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        cartItemService.delete(id);
        response.sendRedirect(request.getContextPath() + "/Admin/order/list");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

