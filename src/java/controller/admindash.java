
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DataCon;

/**
 *
 * @author amisha
 */
public class admindash extends HttpServlet {

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
        String confirm[]= request.getParameterValues("accept1");
         String reject[]= request.getParameterValues("accept2");
         DataCon d=new DataCon();
        try {
            if(confirm!=null)
            {
            for(int i=0;i<confirm.length;i++)
            {
                String j= confirm[i];
            PreparedStatement ps = d.getConnection().prepareStatement("update nominees set status= 'confirm' where roll= ? ;");
            PreparedStatement pst=d.getConnection().prepareStatement("insert into votecount(id,votenumber) values(?,0)"); 
     // ps.setString(9,"confirm");
      ps.setString(1,j);
         pst.setString(1,j);
        pst.executeUpdate();
      // execute the java preparedstatement
      ps.executeUpdate();
            }
            }
            if(reject!=null)
            {
            for(int i=0;i<reject.length;i++)
            {
            String j= reject[i];
            PreparedStatement ps = d.getConnection().prepareStatement("update nominees set status= 'reject' where roll= ? ;");
     // ps.setString(9,"confirm");
      ps.setString(1,j);

      // execute the java preparedstatement
      ps.executeUpdate();
            }
            }
            response.sendRedirect("admindash.jsp");
            
        } catch (SQLException ex) {
            Logger.getLogger(admindash.class.getName()).log(Level.SEVERE, null, ex);
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
