package com.fit.nlu.CelineShop.dao;


import com.fit.nlu.CelineShop.model.Comment;

import java.util.List;

public interface CommentDao {
    void insert(Comment comment);

    void edit(Comment oldComment);

    void delete(int id);

    Comment get(int id);

    List<Comment> getAll();
}
