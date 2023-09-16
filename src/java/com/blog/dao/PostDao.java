/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.dao;

import com.blog.entities.cata;
import java.sql.*;
import java.util.ArrayList;
import com.blog.entities.Post;

public class PostDao 
{
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    
    public ArrayList<cata> getALLCategries()
    {
        ArrayList<cata> list = new ArrayList<>();
        
        try {
            
            Statement stmt = con.createStatement();
            
            String q = "Select * from cata";
            
            ResultSet set = stmt.executeQuery(q);
            
            while(set.next())
            {
                int cid = set.getInt("cid");
                String name = set.getString("name");
                String description = set.getString("description");
                
                cata c = new cata(cid,name,description);
                list.add(c);
            }
            
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean savePost(Post p)
    {
        boolean check = false;
        
        try {
            
            String q = "insert into posts(ptitle,pcontant,pcode,catid,usedid) values(?,?,?,?,?)";
            
            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setString(1, p.getPtitle());
            pstmt.setString(2, p.getPcontant());
            pstmt.setString(3, p.getPcode());
            pstmt.setInt(4, p.getCatid());
            pstmt.setInt(5, p.getUserid());
            
            pstmt.executeUpdate();
            check = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return check;
    }
    
    public ArrayList<Post> getAllPost()
    {
        ArrayList<Post> list = new ArrayList<>();
        
        try {
            String q = "Select * from posts";
            PreparedStatement pstmt = con.prepareStatement(q);
            
            ResultSet set = pstmt.executeQuery();
            
            while(set.next())
            {
                int pid = set.getInt("pid");
                String ptitle = set.getString("ptitle");
                String pcontant = set.getString("pcontant");
                String pcode = set.getString("pcode");
                Timestamp time = set.getTimestamp("pdate");
                int catid = set.getInt("catid");
                int userid = set.getInt("usedid");
                
                Post post = new Post(pid,ptitle,pcontant,pcode,time,catid,userid);
                list.add(post);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public ArrayList<Post> getPostById(int id)
    {
        ArrayList<Post> list = new ArrayList<>();
        
        try {
            String q = "Select * from posts where catid=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1,id);
            ResultSet set = pstmt.executeQuery();
            
            while(set.next())
            {
                int pid = set.getInt("pid");
                String ptitle = set.getString("ptitle");
                String pcontant = set.getString("pcontant");
                String pcode = set.getString("pcode");
                Timestamp time = set.getTimestamp("pdate");
                int catid = set.getInt("catid");
                int userid = set.getInt("usedid");
                
                Post post = new Post(pid,ptitle,pcontant,pcode,time,catid,userid);
                list.add(post);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public Post getPostByPostID(int id)
    {
        Post p = null;
        
        try {
            
            String q = "Select * from posts where pid=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1,id);
            ResultSet set = pstmt.executeQuery();
            
            if(set.next())
            {
                int pid = set.getInt("pid");
                String ptitle = set.getString("ptitle");
                String pcontant = set.getString("pcontant");
                String pcode = set.getString("pcode");
                Timestamp time = set.getTimestamp("pdate");
                int catid = set.getInt("catid");
                int userid = set.getInt("usedid");
                
                p = new Post(pid,ptitle,pcontant,pcode,time,catid,userid);
                //list.add(post);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return p;
    }
}
