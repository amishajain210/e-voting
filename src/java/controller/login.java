/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DataCon;

/**
 *
 * @author amisha
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        //processRequest(request, response);
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
         System.out.println("welcome");
         String password = null;
        String user= request.getParameter("user");
        System.out.println(user);
        String pass= request.getParameter("pass");
         System.out.println(pass);
          String query= "select * from nominees where roll='"+user+"';";
         response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
       DataCon d=new DataCon();
        
           
            //ResultSet rs=null;
        try {
           
           Statement st=d.getStatement();
            System.out.println(st);
            ResultSet rs= st.executeQuery(query);
            if(rs!=null)
            {
                while(rs.next())
                {   
                    password=rs.getString(4);
                }
                
            }
             if(pass.equals(password))
            {
                request.setAttribute("name" , user ) ; 
                // HttpSession session = request.getSession();
           // session.setAttribute("attr", user );
                RequestDispatcher dispatcher = request.getRequestDispatcher("rsdetails.jsp");
                dispatcher.forward( request, response );
            }
            else
            {
                 out.println("<script type=\"text/javascript\">");  
             out.println("alert('Username or password incorrect');"); 
             out.println("location='login.html';");
             out.println("</script>");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        
         
        }
        
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
  
}
