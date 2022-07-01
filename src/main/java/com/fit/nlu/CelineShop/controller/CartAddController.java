package com.fit.nlu.CelineShop.controller;

import com.fit.nlu.CelineShop.model.CartItem;
import com.fit.nlu.CelineShop.model.Product;
import com.fit.nlu.CelineShop.services.ProductService;
import com.fit.nlu.CelineShop.services.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(urlPatterns = {"/member/cart/add"}) // ?pId=123
public class CartAddController extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pId = req.getParameter("pId");
        String quantity = req.getParameter("quantity");
        String size = req.getParameter("size");
        Product product = productService.get(Integer.parseInt(pId));
        CartItem cartItem = new CartItem();
        cartItem.setQuantity(Integer.parseInt(quantity));
        cartItem.setUnitPrice(product.getPrice());
        cartItem.setProduct(product);
        cartItem.setSize(size);
        HttpSession httpSession = req.getSession();
        Object obj = httpSession.getAttribute("cart");
        Map<Integer, CartItem> map;
        if (obj == null) {
            map = new HashMap<Integer, CartItem>();
            map.put(cartItem.getProduct().getId(), cartItem);
        } else {
            map = (Map<Integer, CartItem>) obj;

            CartItem existedCartItem = map.get(Integer.valueOf(pId));

            if (existedCartItem == null) {
                map.put(product.getId(), cartItem);
            } else {
                existedCartItem.setQuantity(existedCartItem.getQuantity() + Integer.parseInt(quantity));
            }

        }
        httpSession.setAttribute("cart", map);

        /*
         * if (obj != null) { CartItem cartItem = new CartItem();
         * cartItem.setProduct(product); cartItem.setQuantity(1);
         * cartItem.setUnitPrice(product.getPrice());
         *
         * Map<Integer, CartItem> map = new HashMap<Integer, CartItem>(); // Su dung map
         * de luu va tim kiem nhanh hon map.put(cartItem.getProduct().getId(),
         * cartItem);
         *
         * httpSession.setAttribute("cart", map);// luu vao session
         *
         * } else {
         *
         * Map<Integer, CartItem> map = (Map<Integer, CartItem>) obj; CartItem cartItem
         * = map.get(product.getId()); // 1: Chua co san pham trong gio hang if
         * (cartItem == null) { CartItem cartItems = new CartItem();
         * cartItems.setProduct(product); cartItems.setQuantity(1);
         * cartItems.setUnitPrice(product.getPrice());
         *
         * // Su dung map de luu va tim kiem nhanh hon
         * map.put(cartItems.getProduct().getId(), cartItems);
         *
         * httpSession.setAttribute("cart", map);// luu vao session } else { // Truong
         * hop da co roi cartItem.setQuantity(1 + cartItem.getQuantity());
         *
         * httpSession.setAttribute("cart", map); }
         */
        resp.sendRedirect(req.getContextPath() + "/product/detail?id=" + pId);
    }
}
