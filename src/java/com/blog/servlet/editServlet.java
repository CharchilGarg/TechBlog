/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.blog.servlet;

import com.blog.dao.userdao;
import com.blog.entities.Message;
import com.blog.entities.user;

import com.blog.helper.connectionProvider;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Lenovo
 */
@MultipartConfig
public class editServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editServlet at " + request.getContextPath() + "</h1>");
            
            String name = request.getParameter("user_name");
            String email = request.getParameter("user_email");
            String password = request.getParameter("user_password");
            
            HttpSession s = request.getSession();
            user u = (user)s.getAttribute("currentUser");
            
            u.setEmail(email);
            u.setName(name);
            u.setPassword(password);
            
            userdao dao;
            try {
                dao = new userdao(connectionProvider.getConnection());
                if(dao.updateUser(u))
                {
                    Message mes = new Message("Successfull updated the data...","success","alert-success");
                    HttpSession session = request.getSession();
                    session.setAttribute("mes", mes);
                }
                else
                {
                    //out.print("fail");
                    Message mes = new Message("Failed to update...","error","alert-danger");
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("mes", mes);
                }
            } catch (SQLException ex) {
                Logger.getLogger(editServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            response.sendRedirect("profil.jsp");
            
           // response.sendRedirect("profil.jsp");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
