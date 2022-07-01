package com.fit.nlu.CelineShop.controller.admin;


import com.fit.nlu.CelineShop.model.Blog;
import com.fit.nlu.CelineShop.services.BlogService;
import com.fit.nlu.CelineShop.services.impl.BlogServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogListController", value = "/Admin/blog/list")
public class BlogListController extends HttpServlet {
    BlogService blogService = new BlogServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> blogList = blogService.getAll();
        request.setAttribute("blogList", blogList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/blogManagement.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
