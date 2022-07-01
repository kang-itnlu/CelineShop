package com.fit.nlu.CelineShop.services;


import com.fit.nlu.CelineShop.model.Contact;

import java.util.List;

public interface ContactService {
    void insert(Contact contact);

    void edit(Contact newContact);

    void delete(int id);

    Contact get(int id);

    List<Contact> getAll();

    List<Contact> search(String name);

}
