/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author amisha
 */
public class adminlogin extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        String user=request.getParameter("username");
        String pass=request.getParameter("pass");
        if(user.equals("root") && pass.equals("iiitbsac"))
        {
            //out.println("successfully logged in");
            response.sendRedirect("../lattes-template/admindash.jsp");
        }
       else
        {
            out.println("<script type=\"text/javascript\">");  
             out.println("alert('Username or Passard incorrect!');"); 
             out.println("location='admin.html';");
             out.println("</script>");
        }
        
    }

     
   

}
