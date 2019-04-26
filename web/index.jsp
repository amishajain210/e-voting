<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="controller.getdata"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>IIITB Sac Voting</title>
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<link href="css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<script src="js/ie-emulation-modes-warning.js"></script>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style>
table {
  font-family: arial, sans-serif;
  background-color: #fff;
  border-collapse: collapse;
  width: 100%;
}
th {
  border: 1px #777 solid ;
  text-align: left;
  padding: 8px;
  font-size: 18px;
  }

td {
  border: 1px solid #777;
  color:  #32383e ;
  font-size: 18px;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

</style>
	</head>
	<body id="page-top">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top"><img src="images/logo1.jpg" alt="IIITB" height="40" width="40"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a class="page-scroll" href="#about"><b>Our Nominees</b></a>
						</li>
						<li>
							<a class="page-scroll" href="Login_v9/login.html"><b>Login</b></a>
						</li>
                                                <li>
							<a class="page-scroll" href="Login_v9/admin.html"><b>Admin</b></a>
						</li>
						<li>
							<a class="page-scroll" href="#guidelines"><b>Important Guidelines</b></a>
						</li>
						<li>
							<a class="page-scroll" href="result/newjsp.jsp"><b>Results</b></a>
						</li>
						<li>
							<a class="page-scroll" href="#contact"><b>Contact Us</b></a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- Header -->
		<header>
			<div class="container">
				<div class="slider-container">
					<div class="intro-text">
						<div class="intro-lead-in">Welcome To IIITB SAC Elections</div>
						<div class="intro-heading">Shape Tomorrow By Voting Today!</div>
						<a href="Login_v9/vote.jsp" class="page-scroll btn btn-xl">VOTE</a>
					</div>
				</div>
			</div>
		</header>
		<section id="about" class="light-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2><strong>Our Nominees</strong></h2>
						
						</div>
                                            
					</div>
                                   
                                     <%
                                         Blob image = null;
                                       byte[] imgData = null;
                                         
                        ResultSet rs= getdata.type4(); 
                   
                    %>
				</div>
                                 <br>
                                    <br>
				<div class="row">
					<!-- about module -->
					<div class="column" style="background-color:#bbb; box-sizing: border-box;">
					
							
							
<table>
  <tr>
    <th>Name</th>
    <th>Course</th>
    <th>Category</th>
    <th>Vote Appeal</th>
    <th>Picture</th>
    
  </tr>
  
  <% try
  {
      while(rs.next())
          
          { 
  //image = rs.getBlob(8);
  //imgData = image.getBytes(8, (int) image.length());
  //response.setContentType("image/gif");
  //OutputStream o = response.getOutputStream();%>  <tr>
    <td><%= rs.getString(1)%></td>
    <td><%= rs.getString(6)%></td>
    <td><%= rs.getString(5)%></td>
  <%  if(rs.getString(7)!=null){%>
    <td><%=rs.getString(7)%></td>
  <%} 
else{%>
    <td>-</td><%}%>
    <td><a href="showimage?image=<%= rs.getString(2)%>" >click </a><!--<img src= "showimage" width="120px" height="150px" /> --></td>
   
  </tr>
  <% 
}
}
  catch(Exception e){
System.out.print(e);}%>
  
</table>
						
</div>
					<!-- end about module -->
					<!-- about module 
					<br>
					<div class="column" style="background-color:#bbb; box-sizing: border-box;">
						
							<h2>IMTech Candidates</h2>
							<br>
							<table>
  <tr>
    <th>Name</th>
    <th>Roll No.</th>
    <th>Course</th>
    <th>Email id</th>
    <th>Vote Appeal</th>
    <th>Picture</th>
  </tr>
  <tr>
    <td>Akshada Kamle</td>
    <td>MT2018006</td>
    <td>MTech CS</td>
    <td>akshada.kamle@iiitb.org</td>
    <td>Hello guys  vote for me and i assure you, you won't regret it</td>
    <td><a href="images/IMG_5877.JPG"><font color = "#0D0589">click</font></a></td>
  </tr>
  
</table>
						
					</div>
					 end about module 
					about module 
					
					 end about module -->
				</div>
			</div>
			<!-- /.container -->
		</section>
		<section id="guidelines" style="background-color: #dddddd ">
			<div class="container" id="portfolio">
				
				         <% ResultSet rss = getdata.type5();%>
						<div class="skills-text">
                                                    <h2><b>IMPORTANT GUIDELINES</b></h2>
                                                        <ul style="font-size:20px">
                                                            <% while(rss.next())
                                                            { %>
                                                            <li><%= rss.getString(1)%></li><br>
                                                            <% } %>
                                                        </ul>
						</div>
					</div>
					
		</section>
		<section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Contact Us</h2>
                                                        <p style="font-size:20px; color:blue;">If you have any queries, mail us at sac2018@iiitb.org </font></p>
						</div>
					</div>
				</div>
				
		</section>
		<p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		<footer>
			<div class="container text-center">
				<p>Designed by <a href="http://moozthemes.com"><span>MOOZ</span>Themes.com</a></p>
			</div>
		</footer>

		

		<!-- Modal for portfolio item 3 -->
		

		<!-- Modal for portfolio item 4 -->
		
		

		<!-- Modal for portfolio item 5 -->
		

		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/cbpAnimatedHeader.js"></script>
		<script src="js/theme-scripts.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="js/ie10-viewport-bug-workaround.js"></script>
	</body>
</html>