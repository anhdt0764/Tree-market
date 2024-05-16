/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ducnk
 */
public class CheckOut {
    int id;
    int uId;
    int cityId;
    int codeId;
    int cartId;
    String phone;
    String address;
    String note;
    String checkOutMethod;

    public CheckOut() {
    }

    public CheckOut(int id, int uId, int cityId, int codeId, int cartId, String phone, String address, String note, String checkOutMethod) {
        this.id = id;
        this.uId = uId;
        this.cityId = cityId;
        this.codeId = codeId;
        this.cartId = cartId;
        this.phone = phone;
        this.address = address;
        this.note = note;
        this.checkOutMethod = checkOutMethod;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public int getCodeId() {
        return codeId;
    }

    public void setCodeId(int codeId) {
        this.codeId = codeId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getCheckOutMethod() {
        return checkOutMethod;
    }

    public void setCheckOutMethod(String checkOutMethod) {
        this.checkOutMethod = checkOutMethod;
    }
    
}
