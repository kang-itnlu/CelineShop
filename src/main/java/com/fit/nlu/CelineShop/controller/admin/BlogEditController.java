package com.fit.nlu.CelineShop.controller.admin;

import com.fit.nlu.CelineShop.model.Blog;
import com.fit.nlu.CelineShop.services.BlogService;
import com.fit.nlu.CelineShop.services.impl.BlogServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "BlogEditController", value = "/Admin/news/edit")
public class BlogEditController extends HttpServlet {
    BlogService blogService = new BlogServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String id = request.getParameter("id");
        Blog blog = blogService.get(Integer.parseInt(id));
        request.setAttribute("blog", blog);
        request.getRequestDispatcher("/view/admin/view/editBlog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Blog blog = new Blog();
        blog.setId(Integer.parseInt(request.getParameter("id")));
        blog.setImage(request.getParameter("image"));
        blog.setBlog_category(request.getParameter("blog_category"));
        blog.setDate(new Date(Long.parseLong(request.getParameter("date"))));
        blog.setName(request.getParameter("name"));
        blog.setDes(request.getParameter("des"));
        blogService.edit(blog);
        response.sendRedirect(request.getContextPath() + "/Admin/blog/list");
    }
}
