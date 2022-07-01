package com.fit.nlu.CelineShop.model;

import java.io.Serializable;

public class Product implements Serializable {
    private int id;
    private String name;
    private long price;
    private int stock;
    private long salePrice;
    private String image;
    private String des;
    private Category category;//cate_id
    private int isLiked;
    private int rating;
    private int soldQuantity;
    private String brand;
    private String manufacturer;
    private String product_detail;

    public Product() {
        super();
    }

    public Product(int id, String name, long price, int stock, long salePrice, String image, String des, Category category, int isLiked,
                   int rating, int soldQuantity, String brand, String manufacturer, String product_detail
    ) {
        super();
        this.id = id;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.salePrice = salePrice;
        this.image = image;
        this.des = des;
        this.category = category;
        this.isLiked = isLiked;
        this.rating = rating;
        this.soldQuantity = soldQuantity;
        this.brand = brand;
        this.manufacturer = manufacturer;
        this.product_detail = product_detail;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getIsLiked() {
        return isLiked;
    }

    public void setIsLiked(int isLiked) {
        this.isLiked = isLiked;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public long getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(long salePrice) {
        this.salePrice = salePrice;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getSoldQuantity() {
        return soldQuantity;
    }

    public void setSoldQuantity(int soldQuantity) {
        this.soldQuantity = soldQuantity;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getProduct_detail() {
        return product_detail;
    }

    public void setProduct_detail(String product_detail) {
        this.product_detail = product_detail;
    }

    public int isLiked() {
        return isLiked;
    }

    public void setLiked(int liked) {
        isLiked = liked;
    }
}