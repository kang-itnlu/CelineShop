package com.fit.nlu.CelineShop.controller.admin;

import com.fit.nlu.CelineShop.model.MoreImage;
import com.fit.nlu.CelineShop.services.ProductService;
import com.fit.nlu.CelineShop.services.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MoreImageController", value = "/Admin/product/image-add")
public class MoreImageController extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("id", id);
        request.getRequestDispatcher("/view/admin/view/addMoreImages.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pro_id = request.getParameter("id");
        String img = request.getParameter("image1");
        String img1 = request.getParameter("image2");
        String img2 = request.getParameter("image3");
        MoreImage moreImage = new MoreImage();
        moreImage.setProduct_id(Integer.parseInt(pro_id));
        moreImage.setImage(img);
        moreImage.setImage1(img1);
        moreImage.setImage2(img2);
        productService.setMoreImage(moreImage);
        response.sendRedirect(request.getContextPath()+"/Admin/product/list");
    }
}
