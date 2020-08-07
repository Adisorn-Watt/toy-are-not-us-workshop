package com.example.backend;

public class ToyResponse {
    private int id;
    private String name;
    private String gender;
    private String age;
    private int price;
    private Boolean available;
    private String brand;
    private String image;


    public ToyResponse(int id, String name, String gender, String age, int price, Boolean available, String brand, String image) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.price = price;
        this.available = available;
        this.brand = brand;
        this.image = image;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }
}
