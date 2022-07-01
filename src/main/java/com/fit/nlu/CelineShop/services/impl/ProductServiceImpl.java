package com.fit.nlu.CelineShop.services.impl;



import com.fit.nlu.CelineShop.dao.ProductDao;
import com.fit.nlu.CelineShop.dao.impl.ProductDaoImpl;
import com.fit.nlu.CelineShop.model.Comment;
import com.fit.nlu.CelineShop.model.MoreImage;
import com.fit.nlu.CelineShop.model.Product;
import com.fit.nlu.CelineShop.services.ProductService;

import java.io.File;
import java.util.List;


public class ProductServiceImpl implements ProductService {
    ProductDao productDao = (ProductDao) new ProductDaoImpl();

    @Override
    public void insert(Product product) {
        productDao.insert(product);

    }

    @Override
    public void edit(Product newProduct) {

        productDao.edit(newProduct);

    }

    @Override
    public void delete(int id) {
        productDao.delete(id);

    }

    @Override
    public Product get(int id) {
        return productDao.get(id);
    }

    @Override
    public List<Product> getAll() {
        return productDao.getAll();
    }

    @Override
    public List<Product> search(String product) {
        return productDao.search(product);
    }

    @Override
    public List<Product> searchByCategory(int cate_id) {
        return productDao.searchByCategory(cate_id);
    }

    @Override
    public List<Product> searchByName(String productName, int currentPage, int productsPerPage) {
        return productDao.searchByName(productName, currentPage, productsPerPage);
    }

    @Override
    public List<Product> getProductByPage(int currentPage, int productsPerPage) {
        return productDao.getProductByPage(currentPage, productsPerPage);
    }

    @Override
    public List<Product> getProductByACS(int currentPage, int productsPerPage) {
        return productDao.getProductByACS(currentPage, productsPerPage);
    }
    @Override
    public List<Product> getProductByDESC(int currentPage, int productsPerPage) {
        return productDao.getProductByDESC(currentPage, productsPerPage);
    }
    @Override
    public int numOfProducts() {
        return productDao.getNoOfProducts();
    }

    @Override
    public int getCateId(int parseInt) {
        return productDao.getCateId(parseInt);
    }

    @Override
    public List<Comment> getAllProductComments(int id) {
        return productDao.getAllProductComments(id);
    }

    @Override
    public List<Product> searchByBrand(String brand, int currentPage, int productsPerPage) {
        return productDao.searchByBrand(brand, currentPage, productsPerPage);
    }

    @Override
    public List<String> getMoreImage(int id) {
        return productDao.getMoreImage(id);
    }

    @Override
    public void setMoreImage(MoreImage moreImage) {
        productDao.setMoreImage(moreImage);
    }

    @Override
    public List<Product> searchByPrice(String brand, int priceFrom, int priceTo, int currentPage, int productsPerPage) {
        return productDao.searchByPrice(brand, priceFrom, priceTo, currentPage,productsPerPage);
    }

    @Override
    public List<Product> searchByRating(int rating, int currentPage, int productsPerPage) {
        return productDao.searchByRating(rating,currentPage,productsPerPage);
    }

}
