package com.fit.nlu.CelineShop.controller;



import com.fit.nlu.CelineShop.model.Comment;
import com.fit.nlu.CelineShop.model.User;
import com.fit.nlu.CelineShop.services.CommentService;
import com.fit.nlu.CelineShop.services.impl.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

@WebServlet(name = "CommentController", value = "/comment")
public class CommentController extends HttpServlet {
    CommentService commentService = new CommentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        Comment cmt = new Comment();
        String path = "/product/detail?id=" + id;
        if (session != null && session.getAttribute("account") != null) {
            User u = (User) session.getAttribute("account");
            cmt.setUsername(u.getUsername());
            cmt.setProduct_id(id);
            cmt.setAvatar(u.getAvatar());
            cmt.setRating(rating);
            cmt.setContent(request.getParameter("message1"));
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");
            Date date = new Date(System.currentTimeMillis());
            cmt.setTime(date);
            commentService.insert(cmt);
            response.sendRedirect(request.getContextPath() + path);
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}
