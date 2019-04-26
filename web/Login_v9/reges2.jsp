<%-- 
    Document   : reges2
    Created on : 25 Apr, 2019, 7:21:41 PM
    Author     : amisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                    <form class="login100-form validate-form" action="regis2" method="post" enctype="multipart/form-data" >
				<span class="login100-form-title p-b-37">
					Upload image
				</span>
                                 <label>Note : File size must be less than 4MB</label>
                                 <br>
				<div>
					<input class="input100" type="file" name="photo" placeholder="image size less then 4MB">
					<span class="focus-input100"></span>
				</div>
                        <div>
                            <input class="input100" type="hidden" name="photo1" value="<%= request.getAttribute("name1")%>">
					<span class="focus-input100"></span>
				</div>
                        <br>
                        <br>
                             <div class="container-login100-form-btn">
					<button class="login100-form-btn">
						Login
					</button>
				</div>
                    </form>
                </div>
    </div>
       
    </body>
</html>
