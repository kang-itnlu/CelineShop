package com.fit.nlu.CelineShop.dao;


import com.fit.nlu.CelineShop.model.Category;

import java.util.List;


public interface CategoryDao {
    void insert(Category category);

    void edit(Category category);

    void delete(int id);

    Category get(int id);

    Category get(String name);

    List<Category> getAll();

    List<Category> search(String username);

}

