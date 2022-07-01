package com.fit.nlu.CelineShop.controller.admin;



import com.fit.nlu.CelineShop.services.CommentService;
import com.fit.nlu.CelineShop.services.impl.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CommentDeleteController", value = "/Admin/comment/delete")
public class CommentDeleteController extends HttpServlet {
    CommentService commentService = new CommentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        commentService.delete(Integer.parseInt(id));

        response.sendRedirect(request.getContextPath() + "/Admin/comment/list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
