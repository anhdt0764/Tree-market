/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class Post {
    int id;
    String title;
    String img;
    String description;
    int uId;
    int tId;

    public Post() {
    }

    public Post(int id, String title, String img, String description, int uId, int tId) {
        this.id = id;
        this.title = title;
        this.img = img;
        this.description = description;
        this.uId = uId;
        this.tId = tId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }
    
}
