package com.fit.nlu.CelineShop.controller.admin;



import com.fit.nlu.CelineShop.model.CartItem;
import com.fit.nlu.CelineShop.services.CartItemService;
import com.fit.nlu.CelineShop.services.CartService;
import com.fit.nlu.CelineShop.services.impl.CartServiceImpl;
import com.fit.nlu.CelineShop.services.impl.CartServiceItemImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/Admin/order/list"})
public class OrderListController extends HttpServlet {
    CartItemService cartItemService = new CartServiceItemImpl();
    CartService cartService = new CartServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CartItem> listCartItem = cartItemService.getAll();
        req.setAttribute("listCartItem", listCartItem);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/orderManagement.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

