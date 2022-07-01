package com.fit.nlu.CelineShop.dao.impl;


import com.fit.nlu.CelineShop.dao.BlogDao;
import com.fit.nlu.CelineShop.jdbc.JDBCConnection;
import com.fit.nlu.CelineShop.model.Blog;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogDaoImpl extends JDBCConnection implements BlogDao {
    @Override
    public void insert(Blog blog) {
        String sql = "INSERT INTO Blog(image, blog_category, date, name, des) VALUES (?,?,?,?,?)";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, blog.getImage());
            ps.setString(2, blog.getBlog_category());
            ps.setDate(3, (Date) blog.getDate());
            ps.setString(4, blog.getName());
            ps.setString(5, blog.getDes());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Blog blog) {
        String sql = "UPDATE Blog SET Blog.name = ? ,image = ?,blog_category=?, date = ?,des=? WHERE id = ?";
        Connection con = getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(2, blog.getImage());
            ps.setString(3, blog.getBlog_category());
            ps.setDate(4, (Date) blog.getDate());
            ps.setString(1, blog.getName());
            ps.setString(5, blog.getDes());
            ps.setInt(6, blog.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM Blog WHERE id=?";
        Connection con = getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    public Blog get(int id) {
        String sql = "SELECT id, blog.image,blog.blog_category,blog.date,blog.name,blog.des"
                + " FROM blog  WHERE blog.id=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setImage(rs.getString("image"));
                blog.setDate(rs.getDate("date"));
                blog.setBlog_category(rs.getString("blog_category"));
                blog.setName(rs.getString("name"));
                blog.setDes(rs.getString("des"));
                return blog;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Blog> getAll() {
        List<Blog> blogList = new ArrayList<>();
        String sql = "SELECT blog.id, blog.image,blog.blog_category,blog.date,blog.name,blog.des"
                + " FROM blog  ";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setImage(rs.getString("image"));
                blog.setDate(rs.getDate("date"));
                blog.setBlog_category(rs.getString("blog_category"));
                blog.setName(rs.getString("name"));
                blog.setDes(rs.getString("des"));
                blogList.add(blog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blogList;
    }

    @Override
    public List<Blog> getBlogByPage(int currentPage, int blogsPerPage) {
        List<Blog> blogList = new ArrayList<Blog>();
        String sql = "SELECT blog.id, blog.name , blog.blog_category,blog.date, blog.image, blog.des"
                + " FROM blog  LIMIT ?,?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, currentPage * blogsPerPage - blogsPerPage);
            ps.setInt(2, blogsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setImage(rs.getString("image"));
                blog.setDate(rs.getDate("date"));
                blog.setBlog_category(rs.getString("blog_category"));
                blog.setName(rs.getString("name"));
                blog.setDes(rs.getString("des"));
                blogList.add(blog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blogList;

    }

    @Override
    public int getNumOfBlogs() {
        return getAll().size();
    }

}


