/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class Cart {
    int cId;
    Product p;
    user u;
    int quantity;
int pid,uid;
    public Cart(int cId, Product p, user u, int quantity) {
        this.cId = cId;
        this.p = p;
        this.u = u;
        this.quantity = quantity;
    }

    public Cart(int cId, Product p, int quantity, int uid) {
        this.cId = cId;
        this.p = p;
        this.quantity = quantity;
        this.uid = uid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Cart(int cId, int quantity, int pid, int uid) {
        this.cId = cId;
        this.quantity = quantity;
        this.pid = pid;
        this.uid = uid;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public user getU() {
        return u;
    }

    public void setU(user u) {
        this.u = u;
    }

    

    public Cart() {
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

   

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
