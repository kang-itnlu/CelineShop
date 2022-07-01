package com.fit.nlu.CelineShop.services;


import com.fit.nlu.CelineShop.model.Blog;

import java.util.List;

public interface BlogService {
    void insert(Blog blog);

    void edit(Blog blog);

    void delete(int id);

    Blog get(int id);

    List<Blog> getAll();

    int numOfBlogs();

    List<Blog> getBlogByPage(int currentPage, int blogsPerPage);
}
