package com.fit.nlu.CelineShop.model;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private String email;
    private String username;
    private String name;
    private String facebook;
    private String password;
    private String avatar;
    private String address;
    private String code;
    private String phone;
    private int roleId;

    public User() {
        super();
    }

    public User(String email, String username, String password) {
        super();
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public User(String email, String username, String code, String password) {
        super();
        this.email = email;
        this.username = username;
        this.code = code;
        this.password = password;
    }

    public User(int id, String email, String username,String name,String facebook, String password, String avatar,String address,String phone, int roleId) {
        super();
        this.id = id;
        this.email = email;
        this.username = username;
        this.name = name;
        this.facebook = facebook;
        this.password = password;
        this.avatar = avatar;
        this.address = address;
        this.phone = phone;
        this.roleId = roleId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
