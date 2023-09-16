/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.helper;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class connectionProvider {
    
    public static Connection con;
    
    public static Connection getConnection() throws SQLException
    {
        if(con == null)
        {
            
            try {
                
                Class.forName("com.mysql.jdbc.Driver");
            
                
                String url = "jdbc:mysql://localhost:3306/j2ee";
		String name = "root";
		String password = "abcde";

		con = DriverManager.getConnection(url,name,password);
                
                
            } catch (Exception e) {
                e.printStackTrace();
            }  
            
        }
        
        return con;
    }
    
}
