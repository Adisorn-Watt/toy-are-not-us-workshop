package com.example.backend;

public class ToyResponse {
    private int id;
    private String productName;
    private int productId;
    private int productPrice;
    private String productImage;
    private String productGender;
    private String productAge;
    private Boolean productStatus;
    private String productBrand;

    public ToyResponse(int id, String productName, int productId, int productPrice, String productImage, String productGender, String productAge, Boolean productStatus, String productBrand) {
        this.id = id;
        this.productName = productName;
        this.productId = productId;
        this.productPrice = productPrice;
        this.productImage = productImage;
        this.productGender = productGender;
        this.productAge = productAge;
        this.productStatus = productStatus;
        this.productBrand = productBrand;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductGender() {
        return productGender;
    }

    public void setProductGender(String productGender) {
        this.productGender = productGender;
    }

    public String getProductAge() {
        return productAge;
    }

    public void setProductAge(String productAge) {
        this.productAge = productAge;
    }

    public Boolean getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(Boolean productStatus) {
        this.productStatus = productStatus;
    }

    public String getProductBrand() {
        return productBrand;
    }

    public void setProductBrand(String productBrand) {
        this.productBrand = productBrand;
    }
}
