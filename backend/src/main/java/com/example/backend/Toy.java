package com.example.backend;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Toy {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int toyID;
    private String toyName;
    private String toyGender;
    private String toyAge;
    private int toyPrice;
    private Boolean toyAvailable;
    private String toyBrand;
    private String toyImage;

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

    public int getToyID() {
        return toyID;
    }

    public void setToyID(int toyID) {
        this.toyID = toyID;
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
