package com.fit.nlu.CelineShop.dao.impl;



import com.fit.nlu.CelineShop.dao.CommentDao;
import com.fit.nlu.CelineShop.jdbc.JDBCConnection;
import com.fit.nlu.CelineShop.model.Comment;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommentDaoImpl extends JDBCConnection implements CommentDao {
    @Override
    public void insert(Comment comment) {
        String sql = "INSERT INTO Comment(username, product_id, avatar, rating,content, time) VALUES (?,?,?,?,?,?)";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, comment.getUsername());
            ps.setInt(2, comment.getProduct_id());
            ps.setString(3, comment.getAvatar());
            ps.setInt(4, comment.getRating());
            ps.setString(5, comment.getContent());
            ps.setDate(6, (Date) comment.getTime());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Comment oldComment) {
        String sql = "UPDATE Comment SET username = ? , product_id = ?,avatar=?,rating=?, content = ?,time=? WHERE id = ?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, oldComment.getUsername());
            ps.setInt(2, oldComment.getProduct_id());
            ps.setString(3, oldComment.getAvatar());
            ps.setInt(4, oldComment.getRating());
            ps.setString(5, oldComment.getContent());
            ps.setDate(6, (Date) oldComment.getTime());
            ps.setInt(7, oldComment.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM Comment WHERE id=?";
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
    public Comment get(int id) {
        String sql = "SELECT username, product_id,avatar,rating,content,time "
                + " FROM Comment" + " WHERE id=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Comment comment = new Comment();
                comment.setUsername(rs.getString("username"));
                comment.setProduct_id(rs.getInt("product_id"));
                comment.setAvatar(rs.getString("avatar"));
                comment.setRating(rs.getInt("rating"));
                comment.setContent(rs.getString("content"));
                comment.setTime(rs.getDate("time"));
                return comment;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;


    }

    @Override
    public List<Comment> getAll() {
        List<Comment> commentList = new ArrayList<Comment>();
        String sql = "SELECT id, username, product_id,avatar,rating,content,time "
                + " FROM Comment";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Comment comment = new Comment();
                comment.setId(rs.getInt("id"));
                comment.setUsername(rs.getString("username"));
                comment.setProduct_id(rs.getInt("product_id"));
                comment.setAvatar(rs.getString("avatar"));
                comment.setRating(rs.getInt("rating"));
                comment.setContent(rs.getString("content"));
                comment.setTime(rs.getDate("time"));
                commentList.add(comment);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return commentList;
    }
}
