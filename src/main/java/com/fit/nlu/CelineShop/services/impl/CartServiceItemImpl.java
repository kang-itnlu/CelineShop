package com.fit.nlu.CelineShop.services.impl;



import com.fit.nlu.CelineShop.dao.CartItemDao;
import com.fit.nlu.CelineShop.dao.impl.CartItemDaoImpl;
import com.fit.nlu.CelineShop.model.CartItem;
import com.fit.nlu.CelineShop.services.CartItemService;

import java.util.List;


public class CartServiceItemImpl implements CartItemService {
    CartItemDao cartItemDao = (CartItemDao) new CartItemDaoImpl();

    @Override
    public void insert(CartItem cartItem) {
        cartItemDao.insert(cartItem);

    }

    @Override
    public void edit(CartItem newCartItem) {
        CartItem oldCartItem = cartItemDao.get(newCartItem.getId());
        oldCartItem.setCart(newCartItem.getCart());
        oldCartItem.setProduct(newCartItem.getProduct());
        oldCartItem.setQuantity(newCartItem.getQuantity());
        oldCartItem.setUnitPrice(newCartItem.getUnitPrice());

        cartItemDao.edit(oldCartItem);
    }

    @Override
    public void delete(String id) {
        cartItemDao.delete(id);
    }

    @Override
    public CartItem get(String id) {
        return cartItemDao.get(id);
    }

    @Override
    public List<CartItem> getAll() {
        return cartItemDao.getAll();
    }

    @Override
    public List<CartItem> search(String keyword) {
        return cartItemDao.search(keyword);
    }

    @Override
    public List<CartItem> getByUserID(int id) {
        return cartItemDao.getByUserID(id);
    }


}
