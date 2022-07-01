package com.fit.nlu.CelineShop.services;



import com.fit.nlu.CelineShop.model.Cart;

import java.util.List;


public interface CartService {
    void insert(Cart cart);

    void edit(Cart newCart);

    void delete(int id);

    Cart get(int id);

    List<Cart> getAll();

    List<Cart> search(String keyword);
}
