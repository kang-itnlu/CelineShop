package com.fit.nlu.CelineShop.dao;




import com.fit.nlu.CelineShop.model.CartItem;

import java.util.List;


public interface CartItemDao {
    void insert(CartItem cartItem);

    void edit(CartItem cartItem);

    void delete(String id);

//    CartItem get(String name);

    CartItem get(String id);

    List<CartItem> getAll();

    List<CartItem> search(String name);

    List<CartItem> getByUserID(int id);
}
