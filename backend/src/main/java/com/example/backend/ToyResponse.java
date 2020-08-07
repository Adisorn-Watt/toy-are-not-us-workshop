package com.example.backend;

public class ToyResponse {
    private int id;
    private int toyId;
    private String toyName;
    private String toyGender;
    private String toyAge;
    private int toyPrice;
    private Boolean toyAvailable;
    private String toyBrand;
    private String toyImage;


    public ToyResponse(int id, int toyId, String toyName, String toyGender, String toyAge, int toyPrice, Boolean toyAvailable, String toyBrand, String toyImage) {
        this.id = id;
        this.toyId = toyId;
        this.toyName = toyName;
        this.toyGender = toyGender;
        this.toyAge = toyAge;
        this.toyPrice = toyPrice;
        this.toyAvailable = toyAvailable;
        this.toyBrand = toyBrand;
        this.toyImage = toyImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getToyName() {
        return toyName;
    }

    public void setToyName(String toyName) {
        this.toyName = toyName;
    }

    public int getToyId() {
        return toyId;
    }

    public void setToyId(int toyId) {
        this.toyId = toyId;
    }

    public int getToyPrice() {
        return toyPrice;
    }

    public void setToyPrice(int toyPrice) {
        this.toyPrice = toyPrice;
    }

    public String getToyImage() {
        return toyImage;
    }

    public void setToyImage(String toyImage) {
        this.toyImage = toyImage;
    }

    public String getToyGender() {
        return toyGender;
    }

    public void setToyGender(String toyGender) {
        this.toyGender = toyGender;
    }

    public String getToyAge() {
        return toyAge;
    }

    public void setToyAge(String toyAge) {
        this.toyAge = toyAge;
    }

    public Boolean getToyAvailable() {
        return toyAvailable;
    }

    public void setToyAvailable(Boolean toyAvailable) {
        this.toyAvailable = toyAvailable;
    }

    public String getToyBrand() {
        return toyBrand;
    }

    public void setToyBrand(String toyBrand) {
        this.toyBrand = toyBrand;
    }
}
