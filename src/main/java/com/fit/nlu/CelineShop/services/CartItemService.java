package com.fit.nlu.CelineShop.services;



import com.fit.nlu.CelineShop.model.CartItem;

import java.util.List;


public interface CartItemService {
    void insert(CartItem cartItem);

    void edit(CartItem cartItem);

    void delete(String id);

    CartItem get(String id);

    List<CartItem> getAll();

    List<CartItem> search(String keyword);

    List<CartItem> getByUserID(int id);
}
