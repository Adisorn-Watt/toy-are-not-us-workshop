package com.example.backend;

public class ToyResponse {
    private int id;
    private String product_name;
    private int product_id;
    private int product_price;
    private String product_image;
    private String product_gender;
    private String product_age;
    private Boolean product_status;
    private String product_brand;

    public ToyResponse(int id, String product_name, int product_id, int product_price, String product_image, String product_gender, String product_age, Boolean product_status, String product_brand) {
        this.id = id;
        this.product_name = product_name;
        this.product_id = product_id;
        this.product_price = product_price;
        this.product_image = product_image;
        this.product_gender = product_gender;
        this.product_age = product_age;
        this.product_status = product_status;
        this.product_brand = product_brand;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getProduct_price() {
        return product_price;
    }

    public void setProduct_price(int product_price) {
        this.product_price = product_price;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    public String getProduct_gender() {
        return product_gender;
    }

    public void setProduct_gender(String product_gender) {
        this.product_gender = product_gender;
    }

    public String getProduct_age() {
        return product_age;
    }

    public void setProduct_age(String product_age) {
        this.product_age = product_age;
    }

    public Boolean getProduct_status() {
        return product_status;
    }

    public void setProduct_status(Boolean product_status) {
        this.product_status = product_status;
    }

    public String getProduct_brand() {
        return product_brand;
    }

    public void setProduct_brand(String product_brand) {
        this.product_brand = product_brand;
    }
}
