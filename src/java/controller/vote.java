/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static java.awt.SystemColor.window;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class vote extends HttpServlet 
{
           public int rand;
          public String roll = null;
          public String email=null;
          public String name=null;
          public int status;
          DataCon d=new DataCon();
          ResultSet rs=null;
          //Setter s=new Setter();
          
  //Session session = Session.getDefaultInstance(properties);  
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {
        String r = request.getParameter("roll");
        String query="select * from student1 where id='"+r+"'; ";
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        
        try
        {
         
        
            Statement st=d.getStatement();
            System.out.println(st);
                    rs=st.executeQuery(query);
            if(rs!=null)
            {
                while(rs.next())
                {
                    status=rs.getInt("vote");
                    email=rs.getString("email");
                    name=rs.getString("name");
                    
                }
                
            System.out.println(email);
        
            }
             else
            {
                System.out.println("data not found");
            }
           }
    catch(Exception e)
    { 
        System.out.println(e);
    }  
      
            
        if(status==0)
        {
             
            rand = randomgenerator.random();
            HttpSession session = request.getSession();
            session.setAttribute("attributeName", rand );
             session.setAttribute("attributeName1", r );

            String user = "amishajain210@gmail.com"; // change accordingly
            String pass = "7987772325"; // change accordingly
            String subject = "OTP Confirmation"; 
        
            String message = "Dear "+name+", Your OTP is "+ rand ;
        
            SendMail.send(email,subject, message, user, pass);
             
            response.sendRedirect("otp.html");
            
        }
        else
        {
            
             out.println("<script type=\"text/javascript\">");  
             out.println("alert('You already Voted');"); 
             out.println("location='vote.jsp';");
             out.println("</script>");
 

        }
    

   }
       
}
