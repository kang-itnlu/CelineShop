package com.fit.nlu.CelineShop.services.impl;



import com.fit.nlu.CelineShop.dao.CartDao;
import com.fit.nlu.CelineShop.dao.impl.CartDaoImpl;
import com.fit.nlu.CelineShop.model.Cart;
import com.fit.nlu.CelineShop.services.CartService;

import java.util.List;


public class CartServiceImpl implements CartService {
    CartDao cartDao = (CartDao) new CartDaoImpl();

    @Override
    public List<Cart> search(String name) {
        return cartDao.search(name);
    }

    @Override
    public void insert(Cart cart) {
        cartDao.insert(cart);

    }

    @Override
    public List<Cart> getAll() {
        return cartDao.getAll();
    }

    @Override
    public Cart get(int id) {
        return cartDao.get(id);
    }

    @Override
    public void edit(Cart newCart) {
        Cart oldCart = cartDao.get(newCart.getId());

        oldCart.setBuyDate(newCart.getBuyDate());
        oldCart.setBuyer(newCart.getBuyer());


        cartDao.edit(oldCart);

    }

    @Override
    public void delete(int id) {
        cartDao.delete(id);
    }
}

