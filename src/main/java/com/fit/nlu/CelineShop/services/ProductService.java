package com.fit.nlu.CelineShop.services;




import com.fit.nlu.CelineShop.model.Comment;
import com.fit.nlu.CelineShop.model.MoreImage;
import com.fit.nlu.CelineShop.model.Product;

import java.util.List;


public interface ProductService {
    void insert(Product product);

    void edit(Product product);

    void delete(int id);

    Product get(int id);

    List<Product> getAll();

    List<Product> search(String username);

    List<Product> searchByCategory(int cate_id);

    List<Product> searchByName(String productName, int currentPage, int productsPerPage);

    List<Product> getProductByPage(int currentPage, int productsPerPage);
    List<Product> getProductByACS(int currentPage, int productsPerPage);
    List<Product> getProductByDESC(int currentPage, int productsPerPage);

    int numOfProducts();

    int getCateId(int parseInt);

    List<Comment> getAllProductComments(int id);

    List<Product> searchByBrand(String brand, int currentPage, int productsPerPage);

    List<String> getMoreImage(int id);
    void setMoreImage(MoreImage moreImage);
    List<Product> searchByPrice(String brand, int priceFrom,int priceTo, int currentPage, int productsPerPage);
    List<Product> searchByRating(int rating, int currentPage, int productsPerPage);
}

