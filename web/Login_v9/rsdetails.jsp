<%-- 
    Document   : rsdetails
    Created on : 22 Apr, 2019, 3:38:42 PM
    Author     : amisha
--%>

<%@page import="model.DataCon"%>
<%@page import="controller.getdata"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        <title>Sac Voting</title>
        <style>
            label{
                font-size: 17px;
                line-height: 1.5em;
                color: darkblue;
            }
        </style>
    </head>
    <body>
        <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                    <center><h3><b>Nominee Dashboard</b></h3></center>
                    <%  String state=null;
                        String roll=null;
                        String email =null;
                        String cont=null;
                        String c =null;
                        String n = null;
                        String x= null;
                        
                        String user = (String) request.getAttribute("name" ) ; 
                         String query= "select * from nominees where roll='"+user+"';";
                         DataCon d=new DataCon();
                         ResultSet rs= d.getStatement().executeQuery(query);                         
                         
                         
                           while(rs.next())
                           {
                          state= rs.getString(9);
                          roll = rs.getString(2);
                          email = rs.getString(3);
                           cont = rs.getString(13);
                           c = rs.getString(6);
                           n =rs.getString(1);
                           }
                           if(state.equals("waiting"))
                           {
                              x = " in waiting"; 
                           }
                           else if(state.equals("confirm")) 
                           { x= "confirmed";
                           }
                           else
                           {
                               x= "Rejected";
                           }
                           %>
                    <br>
                    <label style="color:  crimson; font-size: 17px;"><b> Name : </b><%= n %></label>
                        <br>
                        <label><b> Username : </b><%= roll%></label>
                        <br>	         
                        <label><b> Status : </b> Your application is </label><label style="color: red "> &nbsp; <%= x%></label>
                        <br>
                        <label><b> Email id : </b><%= email %></label>
                        <br>
                        <label><b> Contact No. : </b><%= cont %></label>
                        <br>
                        <label><b> Course : </b><%= c %></label>
                        
                        <br>
                        <br>
                     
<div>
    <form action="appeal" method="post" >
        <h5><b>Write your Vote appeal</b></h5>
        
        <br>
                 <input type="text" name="appeal"  style=" height: 50px; width: 50%;font-size: 17px; color: #000000 ; border-radius: 20px; border : 1px solid #0D0589; background: #e9ecef" >
                 <input type="hidden" name="id" value="<%= roll%>">
                 &nbsp; <button type="submit" style=" color: #000 ; background : limegreen ;
     border: 1px black solid;
    border-radius: 3px;
    font-size: 18x;
    padding: 10px 15px;" onclick="alert('Appeal updated'); location='rsdetails.jsp';" > Ok </button>
    </form>
</div>  
                 <br>
                 <br>
<div>
    <form action="picture" method="post" enctype="multipart/form-data" >
        <h5> <b>Update Picture</b></h5>
                 
                 <label>Note : File size must be less than 4MB</label>
                 <br>
                 
                 <input type="file" name="photo" style="border : 1px black solid;"  >
                  <input type="hidden" name="id" value="<%= roll%>">
                 <br>
                 <br>
                 <button type="submit" style=" color: #fff ;  background : limegreen ;
     border: 1px black solid;
    border-radius: 3px;
    font-size: 12x;
    padding: 5px 7px;" onclick="alert('Picture updated'); location='rsdetails.jsp';"  > Upload </button>
    </form>
</div>   
                 <br>
                 <br>
                 <a href="../index.jsp" style="float: right ;font-size: 18px; color: red "> Logout</a>
		</div>
	</div>
	


	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

    </body>
</html>
