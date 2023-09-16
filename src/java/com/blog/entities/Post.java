/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.entities;

import java.sql.Timestamp;


public class Post {
    
    private int pid;
    private String ptitle;
    private String pcontant;
    private String pcode;
    private Timestamp ptime;
    private int catid;
    private int userid;

    public Post() {
    }

    public Post(int pid, String ptitle, String pcontant, String pcode, Timestamp ptime, int catid,int userid) {
        this.pid = pid;
        this.ptitle = ptitle;
        this.pcontant = pcontant;
        this.pcode = pcode;
        this.ptime = ptime;
        this.catid = catid;
        this.userid = userid;
    }

    public Post(String ptitle, String pcontant, String pcode, Timestamp ptime, int catid, int userid) {
        this.ptitle = ptitle;
        this.pcontant = pcontant;
        this.pcode = pcode;
        this.ptime = ptime;
        this.catid = catid;
        this.userid = userid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getPcontant() {
        return pcontant;
    }

    public void setPcontant(String pcontant) {
        this.pcontant = pcontant;
    }

    public String getPcode() {
        return pcode;
    }

    public void setPcode(String pcode) {
        this.pcode = pcode;
    }

    public Timestamp getPtime() {
        return ptime;
    }

    public void setPtime(Timestamp ptime) {
        this.ptime = ptime;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
    
    
        
}
