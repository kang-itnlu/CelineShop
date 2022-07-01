package com.fit.nlu.CelineShop.dao;



import com.fit.nlu.CelineShop.model.Cart;

import java.util.List;


public interface CartDao {
    void insert(Cart cart);

    void edit(Cart cart);

    void delete(int id);

    Cart get(String name);

    Cart get(int id);

    List<Cart> getAll();

    List<Cart> search(String name);
}

