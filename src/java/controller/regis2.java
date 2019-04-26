/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.DataCon;

/**
 *
 * @author amisha
 */
@MultipartConfig(maxFileSize = 16177215)
public class regis2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet regis2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet regis2 at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
         System.out.println("welcome again");
        InputStream inputStream = null; 
        Part p = request.getPart("photo");
        System.out.println(p);
        String id= request.getParameter("photo1");
        System.out.println(id);
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
       
         //HttpSession session = request.getSession();
         //String id=(String) session.getAttribute("attr");
        if(p!=null)
        {
        inputStream = p.getInputStream();
        System.out.println(inputStream);
        DataCon d=new DataCon();
            try {
                PreparedStatement pst=d.getConnection().prepareStatement("update nominees set photo = ? where roll='"+id+"';" );
                pst.setBlob(1, inputStream);
                int i = pst.executeUpdate();  
              if(i>0){  
                  
                  out.println("<html><h3>You are successfully registered..Login for further information</h3>");
                  out.println("<br><a href='../index.jsp'> back </a></html>");
               // session.invalidate();
               
                //out.println("Record has been inserted");  
              }
              else
                  out.println("Record not inserted"+id); 
            } catch (SQLException ex) {
                System.out.println(ex);
                Logger.getLogger(picture.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
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
