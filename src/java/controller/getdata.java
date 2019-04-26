/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import java.sql.ResultSet;
import java.sql.SQLException;
import model.DataCon;

/**
 *
 * @author amisha
 */
public class getdata {
    public static ResultSet type1() throws SQLException
    {
    String query="select id from student1;";
    DataCon d=new DataCon();
    ResultSet rs= d.getStatement().executeQuery(query);
    return rs;
    }
    public static ResultSet type2() throws SQLException 
    {
         String query="select * from nominees where gender='female' and status='confirm';";
     DataCon d=new DataCon();
    ResultSet rs= d.getStatement().executeQuery(query);
    return rs;
    }
     public static ResultSet type3() throws SQLException 
    {
         String query="select * from nominees where gender='male' and status='confirm';";
     DataCon d=new DataCon();
    ResultSet rs= d.getStatement().executeQuery(query);
    return rs;
    }
     public static ResultSet type4() throws SQLException 
    {
      String query="select * from nominees where status='confirm';";
     DataCon d=new DataCon();
    ResultSet rs= d.getStatement().executeQuery(query);
    return rs;
    }
     public static ResultSet type5() throws SQLException 
    {
      String query="select * from guidelines;";
     DataCon d=new DataCon();
    ResultSet rs= d.getStatement().executeQuery(query);
    return rs;
    }
     public static ResultSet type6() throws SQLException 
    {
      String query="select * from student1;";
     DataCon d=new DataCon();
    ResultSet rs= d.getStatement().executeQuery(query);
    return rs;
    }
     
     
}
