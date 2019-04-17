/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.InputStream;
import static java.lang.System.out;
import java.sql.PreparedStatement;
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
    InputStream inputstream=null;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {    
        System.out.println("welcome to servlet");
        //response.setContentType("text/html"); 
        String n = request.getParameter("name");
        System.out.println(n);
        String r = request.getParameter("roll");
        System.out.println(r);
        String em =request.getParameter("email");
        String g= request.getParameter("gender");
        String pa=request.getParameter("pass");
        String c=request.getParameter("course");
        String a=request.getParameter("appeal");
        Part p=request.getPart("photo");
        
        if(p!=null)
        { inputstream=p.getInputStream();
            System.out.println("data recieved");}
        try
        {
            DataCon d=new DataCon();
        
        PreparedStatement pst=d.getConnection().prepareStatement("insert into nominees(name,roll,email,pass,gender,course,appeal,photo) values(?,?,?,?,?,?,?,?);");
         pst.setString(1,n);
         pst.setString(2,r);
         pst.setString(3,em);
         pst.setString(4,pa);
         pst.setString(5,g);
         pst.setString(6,c);
         pst.setString(7,a);
         pst.setBlob(8, inputstream);
         System.out.println("data set");
         int row=pst.executeUpdate();
          if (row > 0) {
              out.println("File uploaded and saved into database");
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