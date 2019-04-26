/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class dash extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    
     String[] votes = request.getParameterValues("male") ;
     String[] votes1 = request.getParameterValues("female") ;
        try (PrintWriter out = response.getWriter()) {
            System.out.println("welcome");
            //PrintWriter writer =  response.getWriter();
            response.setContentType("text/html");
            int l = votes.length;
            HttpSession session = request.getSession();
        
         String roll = (String) session.getAttribute("attributeName1");
            //out.println("length "+l);
             DataCon d=new DataCon();
             
             
                 d.getStatement().executeUpdate("update votecount set votenumber=votenumber+1 where id='"+votes[0]+"'");
             d.getStatement().executeUpdate("update votecount set votenumber=votenumber+1 where id='"+votes[1]+"'");
             d.getStatement().executeUpdate("update votecount set votenumber=votenumber+1 where id='"+votes1[0]+"'");
             d.getStatement().executeUpdate("update votecount set votenumber=votenumber+1 where id='"+votes1[1]+"'");
             d.getStatement().executeUpdate("update student1 set vote=1 where id='"+roll+"';");
             session.invalidate();
            // d.close();
             out.println("<html><body><h1>Thank You for Voting! Your vote is submitted Successfully</h1>");
                     out.println("<br><a href='../index.jsp'> back </a>");
                     out.println("</body>");
                     out.println("</html>");
             /*if(l<2)
            {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please Select 2 SAC');");
            out.println("location='dash.html';");
            out.println("</script>");
        }*/} catch (SQLException ex) {
            Logger.getLogger(dash.class.getName()).log(Level.SEVERE, null, ex);
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
