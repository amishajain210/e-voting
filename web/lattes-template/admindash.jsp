<%@page import="controller.getdata"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.DataCon"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>Admin</title>
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
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  }

td {
  border: 1px solid #dddddd;
  color: #0D0589;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
input[type="checkbox"]{
  
color : #fff;
  width: 20px; /*Desired width*/
  height: 20px;
   /*Desired height*/

}
.details{
   /* color: #0D0589; */
   color: #000;
}
#more {display: none;}
	</style>
        <script>
function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less"; 
    moreText.style.display = "inline";
  }
}
</script>
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
							<a class="page-scroll" href="#about"><b>Show new registrations</b></a>
						</li>
						<li>
							<a class="page-scroll" href="#student"><b>Show student list</b></a>
						</li>
						<li>
							<a class="page-scroll" href="#portfolio"><b>Post Important Guidelines</b></a>
						</li>
						<li>
							<a class="page-scroll" href="#"><b>Results</b></a>
						</li>
                                                <li>
							<a class="page-scroll" href="../index.jsp"><b>Logout</b></a>
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
						<div class="intro-lead-in">Admin Dashboard</div>
						
					</div>
				</div>
			</div>
		</header>
		<section id="about" class="light-bg">
			<div class="container">
				
                            <form action="admindash" method="post">
						<div class="section-title">
							<h2><b>New Nominees Registrations</b></h2>
							<br>
					<br>
						</div>
                  
					<% String query="select * from nominees where status='waiting';";
                                          DataCon d=new DataCon();
                                          ResultSet rs= d.getStatement().executeQuery(query); %>


					<div class="column" style="background-color:#bbb; box-sizing: border-box;">
					<table>
						<tr>
							<th>Name</th>
							<th>Other details</th>
							<th>Status</th>
						</tr>
                                                <%  while(rs.next())
                                                { %>
						<tr>
                                                    <td style="color:black"><b><%= rs.getString(1)%></b></td>
                                       
                                                    <td><label class="details">Roll :</label> <%= rs.getString("roll")%><br> <label class="details">Contact No. :</label> <%= rs.getInt(10)%><br><label class="details"> Email :</label> <%= rs.getString(3)%><br> <label class="details">Category :</label> <%= rs.getString(5)%><br> <label class="details">Course :</label> <%= rs.getString(6)%><br><label class="details"> What is Sac to you :</label> <%= rs.getString(11)%><br><label class="details"> Why you want to join Sac :</label> <%= rs.getString(12)%><br><label class="details"> Share your previous experience :</label> <%= rs.getString(13)%></td>
                                                    <td><label style="color:green">Accept</label>&nbsp;<input type="checkbox" name="accept1" value="<%= rs.getString(2)%>">&nbsp;
								&nbsp;
                                                                <label style="color: red">  Reject</label>&nbsp;<input type="checkbox" name="accept2" value="<%= rs.getString(2)%>">
							</td>
						</tr>
                                                <% } %>
                   </table>
                   
				</div>
                   <br>
                   <center> <button type="submit" class="page-scroll btn btn-xl" >Ok</button></center>
				 </form>
			</div>
               
 
			<!-- /.container -->
		</section>
		<section id="student" >
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="skills-text">
                                                    <h2><b>Student list</b></h2>
					<% ResultSet rss = getdata.type6();%>
						</div>
					</div>
                                                </div>
                                 
                                    <br>
				<div class="row">
<div class="column" style="background-color:#bbb; box-sizing: border-box;">
					
							
							
<table>
  <tr>
    <th>Name</th>
    <th>Roll No.</th>
    <th>Email id</th>
    <th>Voting status</th>
  </tr>
  <% while(rss.next())
  { %>
  <tr>
      <td style="color: #000" ><%= rss.getString(2)%></td>
      <td style="color: #000 " ><%= rss.getString(1)%></td>
      <td style="color:#000" ><%= rss.getString(3)%></td>
      <% if(rss.getInt(4)==0)
      { %>
      <td style="color: red">Not Voted</td>
      <% }
else {%>
<td style="color:black">Voted</td>
     <%}%>
  </tr>			
	<% } %>	
</table>
</div>
</div>
			</div>
		</section>
		
		<section id="portfolio" class="light-bg">
			<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
                                            <h3><b>Post Important Guidelines</b></h3>
						
					</div>
				</div>
			</div>
                            <br>
		             
                            <form action="guideline" method="post">
                                
				
                                <center><input type="text" name="guide"  style=" height: 100px; width: 50%; border-radius: 20px; font-size: 20px; border: 1px solid #0D0589; color : #0D0589; " placeholder="type here">
                                    
                                    
                                    <br>
                                    <br>
					 <button type="submit" class="page-scroll btn btn-xl" >Post</button>
                                    </center>  
                                </form>
                                </div>
                                
                            
				
		
		</section>
		
<br>
<br>
<br>
<br>
<br>
		

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