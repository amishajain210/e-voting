
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DataCon 
{
    static Connection con=null;
       static Statement st=null;
   static
   {
       
    try
    {    
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting1","root","root"); 
        System.out.println("connection successful");
        st=con.createStatement();
        System.out.println("statemnt");
        /*Setter s=new Setter();
        s.setConnection(con);
        s.setStatement(st);*/
    }
    
    catch(Exception e)
    { 
        System.out.println(e);
    }  
    
   
   
}  
   
  public Connection getConnection()
   {
       return con;
   }
    public Statement getStatement()
   {
       return st;
   }

    public void close() throws SQLException {
        con.close(); //To change body of generated methods, choose Tools | Templates.
    }
}

