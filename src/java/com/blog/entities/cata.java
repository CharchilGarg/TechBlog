/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.entities;

/**
 *
 * @author Lenovo
 */
public class cata {
    
    int cid;
    String name;
    String description;

    public cata() {
    }

    public cata(int cid, String name, String description) {
        this.cid = cid;
        this.name = name;
        this.description = description;
    }

    public cata(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
