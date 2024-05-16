/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class account {
    String name;
    String pass;
    int role;
    String uName;
    int uId;

    public account() {
    }

    public account(String name, String pass, int role, String uName, int uId) {
        this.name = name;
        this.pass = pass;
        this.role = role;
        this.uName = uName;
        this.uId = uId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }
    
}
