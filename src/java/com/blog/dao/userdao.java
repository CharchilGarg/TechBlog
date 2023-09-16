/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.dao;
import com.blog.entities.user;

import java.sql.*;

public class userdao {
    
    private Connection con;

    public userdao(Connection con) {
        this.con = con;
    }
    
    public Boolean saveUser(user u)
    {
        Boolean bool = false;
        
        try{
            
            String q = "insert into user(name,email,password,gender) values(?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setString(1,u.getName());
            pstmt.setString(2, u.getEmail());
            pstmt.setString(3, u.getPassword());
            pstmt.setString(4,u.getGender());
            
            pstmt.executeUpdate();
            bool = true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return bool;
    }
    
    
    public user getUserbyEmailAndPassword(String email,String password)
    {
        user u =null;
        
        try{
            
            String q = "select * from user where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setString(1, email);
            pstmt.setString(2,password);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next())
            {
                u = new user();
                
                String name = set.getString("name");
                u.setName(name);
                
                String Email = set.getString("email");
                u.setEmail(Email);
                
                String Password = set.getString("password");
                u.setPassword(Password);
                
                String Gender = set.getString("gender");
                u.setGender(Gender);
                
                u.setId(set.getInt("id"));
                
                u.setProfil(set.getString("profil"));
                
                
            }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return u;
    }
    
    public Boolean updateUser(user u)
    {
        Boolean bool = false;
        try{
            
            String q = "update user set name=? ,email=? , password=?  where id=?";
            
            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setString(1, u.getName());
            pstmt.setString(2,u.getEmail());
            pstmt.setString(3,u.getPassword());
            pstmt.setInt(4, u.getId());
            
            pstmt.executeUpdate();
            bool =true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return bool;
    }
    
    public user getUserByUserId(int id)
    {
        user u =null;
        
        try {
            String q = "select * from user where id=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setInt(1, id);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next())
            {
                u = new user();
                
                String name = set.getString("name");
                u.setName(name);
                
                String Email = set.getString("email");
                u.setEmail(Email);
                
                String Password = set.getString("password");
                u.setPassword(Password);
                
                String Gender = set.getString("gender");
                u.setGender(Gender);
                
                u.setId(set.getInt("id"));
                
                u.setProfil(set.getString("profil"));
                
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return u;
    }
}
