package com.fit.nlu.CelineShop.services;




import com.fit.nlu.CelineShop.model.Category;

import java.util.List;


public interface CategoryService {
    void insert(Category category);

    void edit(Category category);

    void delete(int id);

    Category get(int id);

    Category get(String name);

    List<Category> getAll();

    List<Category> search(String username);

}
