package com.fit.nlu.CelineShop.model;

public class MoreImage {
    private int id;
    private int product_id;
    private String image;
    private String image1;
    private String image2;
    public MoreImage() {
    }
    public MoreImage(int id, int product_id, String image, String image1, String image2) {
        this.id = id;
        this.product_id = product_id;
        this.image = image;
        this.image1 = image1;
        this.image2 = image2;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }
}
