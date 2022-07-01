package com.fit.nlu.CelineShop.controller;



import com.fit.nlu.CelineShop.model.Comment;
import com.fit.nlu.CelineShop.model.Product;
import com.fit.nlu.CelineShop.services.ProductService;
import com.fit.nlu.CelineShop.services.impl.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/product/detail")
public class ProductDetailController extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Product product = productService.get(Integer.parseInt(id));
        int id_cate = productService.getCateId(Integer.parseInt(id));
        List<Product> categories = productService.searchByCategory(id_cate);
        List<String> moreImg = productService.getMoreImage(Integer.parseInt(id));
        List<Comment> listComment = productService.getAllProductComments(Integer.parseInt(id));
        request.setAttribute("categories", categories);
        request.setAttribute("moreImg", moreImg);
        request.setAttribute("product", product);
        request.setAttribute("listComment", listComment);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/view/product-detail.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
