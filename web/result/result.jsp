<%@page import="controller.getdata"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

	<!-- Site title
   ================================================== -->
	<title>Results</title>

	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="css/animate.min.css">

	<!-- Font Icons CSS
   ================================================== -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">

	<!-- Main CSS
   ================================================== -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Google web font 
   ================================================== -->	
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
  <script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Vote Counts Till Now"
	},
	//axisY: {
		//title: "Vote Count"
	//},
	data: [{        
		  
		
		
		
		
		dataPoints: [      
			{ y: 40, label: "Venezuela" },
			{ y: 50,  label: "Saudi" },
			{ y: 30,  label: "Canada" },
			{ y: 15,  label: "Iran" },
			{ y: 64,  label: "Iraq" },
			{ y: 55, label: "Kuwait" },
			{ y: 6,  label: "UAE" },
			{ y: 22,  label: "Russia" }
		]
	}]
});
chart.render();

}
</script>
	
</head>
<body>
 


<div class="nav-container">
   <nav class="nav-inner transparent">

      <div class="navbar">
         <div class="container">
            <div class="row">

              <div class="brand">
                <a href="index.jsp">IIITB</a>
              </div>
               

            </div>
         </div>
      </div>

   </nav>
</div>


<!-- Header section
================================================== -->
<section >
	
	 <% ResultSet rs= getdata.type5(); 
         ResultSet rss= getdata.type6();%>
      <div id="chartContainer" style="height: 400px; width: 80%;"></div>
<center><script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script></center>
	
</section>

<section id="bargraph" class="header-one">
  <div class="container">
    <div class="row">

      

    </div>
  </div>    
</section>


<!-- Portfolio section
================================================== -->

<!-- Footer section
================================================== -->


<!-- Javascript 
================================================== -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/isotope.js"></script>
<script src="js/imagesloaded.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
   
 
        
    
</html>