/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class Coupound {
    int id;
    String name;
    String detail;
    String value;

    public Coupound() {
    }

    public Coupound(int id, String name, String detail, String value) {
        this.id = id;
        this.name = name;
        this.detail = detail;
        this.value = value;
    }

    public Coupound(String name, String detail, String value) {
        this.name = name;
        this.detail = detail;
        this.value = value;
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

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
    
}
