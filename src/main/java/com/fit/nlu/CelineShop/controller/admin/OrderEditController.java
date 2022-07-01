package com.fit.nlu.CelineShop.controller.admin;



import com.fit.nlu.CelineShop.model.CartItem;
import com.fit.nlu.CelineShop.services.CartItemService;
import com.fit.nlu.CelineShop.services.impl.CartServiceItemImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "OrderEditController", value = "/Admin/order/edit")
public class OrderEditController extends HttpServlet {
    CartItemService cartItemService = new CartServiceItemImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        CartItem cartItem = cartItemService.get(id);
        request.setAttribute("id", id);
        request.setAttribute("cartItem", cartItem);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/editOrder.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
