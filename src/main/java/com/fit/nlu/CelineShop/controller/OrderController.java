package com.fit.nlu.CelineShop.controller;



import com.fit.nlu.CelineShop.model.Cart;
import com.fit.nlu.CelineShop.model.CartItem;
import com.fit.nlu.CelineShop.model.Product;
import com.fit.nlu.CelineShop.model.User;
import com.fit.nlu.CelineShop.services.CartItemService;
import com.fit.nlu.CelineShop.services.CartService;
import com.fit.nlu.CelineShop.services.ProductService;
import com.fit.nlu.CelineShop.services.UserService;
import com.fit.nlu.CelineShop.services.impl.CartServiceImpl;
import com.fit.nlu.CelineShop.services.impl.CartServiceItemImpl;
import com.fit.nlu.CelineShop.services.impl.ProductServiceImpl;
import com.fit.nlu.CelineShop.services.impl.UserServiceImpl;
import com.fit.nlu.CelineShop.tools.SendEmail;
import com.fit.nlu.CelineShop.util.RandomUUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(urlPatterns = "/member/order")
public class OrderController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    CartService cartService = new CartServiceImpl();
    ProductService productService = new ProductServiceImpl();
    CartItemService cartItemService = new CartServiceItemImpl();
    long time = System.currentTimeMillis();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Object obj = session.getAttribute("account");
        User buyer = (User) obj;
        Cart cart = new Cart();
        cart.setBuyer(buyer);
        cart.setBuyDate(new java.sql.Date(time));
        cart.setId(RandomUUID.getRandomID());
        cartService.insert(cart);
        Object objCart = session.getAttribute("cart");
//        if (objCart != null) {
            // ep ve dung kieu cua no khi them vao o phan them vao gio hang controller
            Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

            for (CartItem cartItem : map.values()) {
                cartItem.setCart(cart);
                // cônmgj số sản phẩm bán
               Product p= productService.get(cartItem.getProduct().getId());
               p.setSoldQuantity(productService.get(cartItem.getProduct().getId()).getSoldQuantity() + cartItem.getQuantity());
               productService.edit(p);
                cartItem.setId(RandomUUID.getRandomID());
                SendEmail.sendMail(cart.getBuyer().getEmail(), "Celine", "Payment success. We will contact you soon ! ");
                cartItemService.insert(cartItem);

//            }

        }
        session.removeAttribute("cart");
        resp.sendRedirect(req.getContextPath() + "/welcome");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
