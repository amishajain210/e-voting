/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.File;
import java.lang.Long;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import static java.lang.System.out;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.DataCon;

/**
 *
 * @author amisha
 */

public class Register extends HttpServlet 
{
   // InputStream inputstream=null;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {    
        
        //InputStream inputstream = null;
        System.out.println("welcome to servlet");
        response.setContentType("text/html"); 
        //MultipartFormDataRequest mrequest=new MultipartFormDataRequest(request);
        String n = request.getParameter("name");
        System.out.println(n);
        String r = request.getParameter("roll");
        System.out.println(r);
        String em =request.getParameter("email");
        String g= request.getParameter("gender");
        String pa=request.getParameter("pass");
        String c=request.getParameter("course");
        String a = request.getParameter("contact");
        String sac =request.getParameter("sac");
        String join =request.getParameter("join");
        String exp =request.getParameter("experience");
//       // File imgfile = new File(request.getParameter("photo"));
        System.out.println("data recieved");
        //System.out.println(imgfile);
       
       
       // Part p=request.getPart("photo");
        
      
        try
        {
            DataCon d=new DataCon();
        
        PreparedStatement pst=d.getConnection().prepareStatement("insert into nominees(name,roll,email,pass,gender,course,contact,sactoyou,joinsac,experience,status) values(?,?,?,?,?,?,?,?,?,?,'waiting');");
        
        pst.setString(1,n);
         pst.setString(2,r);
         pst.setString(3,em);
         pst.setString(4,pa);
         pst.setString(5,g);
         pst.setString(6,c);
         pst.setString(7,a);
         pst.setString(8,sac);
         
         pst.setString(9,join);
         pst.setString(10,exp);
            
           
 
         System.out.println("data set");
         
         int row=pst.executeUpdate();
          if (row > 0 ) {
             // out.println("File uploaded and saved into database");
              request.setAttribute("name1" , r ) ; 
               RequestDispatcher dispatcher = request.getRequestDispatcher("reges2.jsp");
               dispatcher.forward( request, response );
                System.out.println("File uploaded and saved into database");
            }
else
         System.out.println("data not inserted");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        
    }

    
  
}
