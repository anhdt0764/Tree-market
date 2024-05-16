/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class user {
    int id;
    String name;
    String email;
    String img;
    int accId;
    account acc;

    public user() {
    }

    public account getAcc() {
        return acc;
    }

    public void setAcc(account acc) {
        this.acc = acc;
    }

    public user(int id, String name, String email, String img, account acc) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.img = img;
        this.acc = acc;
    }

    public user(int id, String name, String email, String img, int accId) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.img = img;
        this.accId = accId;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }
    
}
