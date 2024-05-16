/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class Product {
    int id;
    String name;
    int cId;
    String description;
    String img;
    float price;
    int quantity;
    Category c;
    public Product() {
    }

    public Product(String name, int cId, String description, String img, float price, int quantity) {
        this.name = name;
        this.cId = cId;
        this.description = description;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
    }

    public Product(int id, String name, int cId, String description, String img, float price, int quantity) {
        this.id = id;
        this.name = name;
        this.cId = cId;
        this.description = description;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
    }

    public Product(int id, String name, String description, String img, float price, int quantity, Category c) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
        this.c = c;
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

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Category getC() {
        return c;
    }

    public void setC(Category c) {
        this.c = c;
    }
    
}
