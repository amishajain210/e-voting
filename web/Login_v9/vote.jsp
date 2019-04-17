<%@page import="controller.getdata"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.DataCon"%>
<!DOCTYPE html>  
<html lang="en">
<head>
	<title>Vote now</title>
	<meta charset="UTF-8">
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
<!--===============================================================================================-->
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" action = "vote" method="post" >
				
				<span class="login100-form-title p-b-37" style="text-align:left;">
					<h4><font color = "black">Voting Instructions</font></h4>
					<font size="4"> 
					* Select your roll no. from the list<br>
                    * Click on OK <br>
                    * An OTP will be send to your College email id <br>
                    * Type the OTP and click on VOTE <br>
                </font>
				</span>
				
				<div >
                                    
                    <%
                        ResultSet rs= getdata.type1(); 
                   /* 
                        String query="select id from student1;";
                    DataCon d=new DataCon();
                        ResultSet rs= d.getStatement().executeQuery(query);*/
                    %>
		<select name = "roll"  style = "font-family: SourceSansPro-Bold;
                          font-size: 16px;
                          color: #4b2354;
                         line-height: 1.2;

                       display: block;
                      width: 100%;
                      height: 62px;
                      background: transparent;
                      padding: 0 20px 0 23px; position: relative;
  background-color: #fff;
  border-radius: 20px;
}">
                    <option>Select Roll No.</option>
                    <% while(rs.next())
                    { %>
                    <option><%= rs.getString(1)%></option>
                    <% }%>
                    
                </select>
				</div>

				<br>

				<div class="container-login100-form-btn">
                                    <button class="login100-form-btn" type="submit">
						OK
					</button>
				
				</div>

				
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
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