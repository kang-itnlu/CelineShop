package com.fit.nlu.CelineShop.controller.admin;



import com.fit.nlu.CelineShop.model.Category;
import com.fit.nlu.CelineShop.services.BlogService;
import com.fit.nlu.CelineShop.services.impl.BlogServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BlogAddController", value = "/Admin/blog/add")
public class BlogAddController extends HttpServlet {
    BlogService blogService = new BlogServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/addBlog.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        Category category = new Category();
        category.setId(Integer.parseInt(id));
        category.setName(name);
        response.sendRedirect(request.getContextPath() + "/Admin/category/list");
    }
}
