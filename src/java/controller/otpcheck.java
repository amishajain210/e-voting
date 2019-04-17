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
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author amisha
 */
public class otpcheck extends HttpServlet 
{
      public int r;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        
         r = (int) session.getAttribute("attributeName");
         int s= Integer.parseInt(request.getParameter("otp"));
          if(r==s)
          {
              out.println("otp matched");
              response.sendRedirect("../dashboard/dash.jsp");
          }
         else
          {
              
             out.println("<script type=\"text/javascript\">");  
             out.println("alert('wrong otp');"); 
             out.println("location='otp.html';");
             out.println("</script>");
          }    
         
    }


}
