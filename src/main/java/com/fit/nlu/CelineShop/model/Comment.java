package com.fit.nlu.CelineShop.model;

import java.io.Serializable;
import java.sql.Date;

public class Comment implements Serializable {
    private int id;
    private int product_id;
    private String username;
    private String avatar;
    private int rating;
    private String content;
    private Date time;

    public Comment() {
    }

    public Comment(int id, int product_id, String username, String avatar, int rating, String content, Date time) {
        this.id = id;
        this.product_id = product_id;
        this.username = username;
        this.avatar = avatar;
        this.rating = rating;
        this.content = content;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }


}
