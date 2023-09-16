
package com.blog.dao;



import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Likedao {
    
    private Connection con ;

    public Likedao(Connection con) {
        this.con = con;
    }
    
    public boolean insetLike(int uid,int pid)
    {
        String q = "insert into likes(pid,uid) values(?,?)";
        boolean check = false; 
        try {
            
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1,pid);
            pstmt.setInt(2,uid);
            
            pstmt.executeUpdate();
            check= true;
         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
    
    public int countLinksOnPost(int pid)
    {
        int count = 0;
        
        String q = "select count(*) from likes where pid=?";
        
        try {
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1,pid);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next())
            {
                count = set.getInt(1);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return count;
    }
    
    public boolean isLikedbyUser(int uid,int pid)
    {
        boolean check = false;
        
        String q = "select * from likes where pid=? and uid=?";
        
        try {
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1,pid);
            pstmt.setInt(2,uid);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next())
            {
                check = true;
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return check;
    }
    
    public boolean removeLike(int uid ,int pid)
    {
        boolean check = false;
        
        String q = "delete from likes where pid=? and uid=?";
        
        try {
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1,pid);
            pstmt.setInt(2,uid);
            
            pstmt.executeUpdate();
            check = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return check;
    }
    
}
