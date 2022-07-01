package com.fit.nlu.CelineShop.dao;


import com.fit.nlu.CelineShop.model.Blog;

import java.util.List;

public interface BlogDao {
    void insert(Blog blog);

    void edit(Blog blog);

    void delete(int id);

    Blog get(int id);

    List<Blog> getAll();

    List<Blog> getBlogByPage(int currentPage, int blogsPerPage);

    int getNumOfBlogs();
}
