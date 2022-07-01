package com.fit.nlu.CelineShop.controller;



import com.fit.nlu.CelineShop.model.Blog;
import com.fit.nlu.CelineShop.services.BlogService;
import com.fit.nlu.CelineShop.services.impl.BlogServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogController", value = "/blog")
public class BlogController extends HttpServlet {
    BlogService blogService = new BlogServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage = 1;
        int blogsPerPage = 3;
        if (request.getParameter("page") != null)
            currentPage = Integer.parseInt(
                    request.getParameter("page"));
        List<Blog> blogList = blogService.getBlogByPage(currentPage, blogsPerPage);
        request.setAttribute("blog", blogList);
        int numOfBlog = blogService.numOfBlogs();
        int numOfPages = numOfBlog / blogsPerPage;
        if (numOfPages % blogsPerPage > 0) {
            numOfPages++;
        }
        request.setAttribute("numOfPages", numOfPages);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("blogsPerPage", blogsPerPage);
        request.getRequestDispatcher("/view/client/view/blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
