<%@page import="java.sql.ResultSet"%>
<%@page import="controller.getdata"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
<script
      src="https://code.jquery.com/jquery-2.2.4.min.js"
           crossorigin="anonymous"></script>

<script>
$(document).ready(function() {

    $(".chkbox").on('click', function() {
        var numberOfChecked = $('input.chkbox:checkbox:checked').length;
        if (numberOfChecked === 2) {
            //$(this).prop('checked', false);
            $('input.chkbox:checkbox:not(:checked)').prop('disabled',true);
           
        }
        else
        {
             $('input.chkbox:checkbox:not(:checked)').prop('disabled' , false);
            // $('input.chkbox:checkbox:not(:checked)').prop('checked' , true);
        }
    });
    
   
    

});
$(document).ready(function() {

    $(".chkbox2").on('click', function() {
        var numberOfChecked = $('input.chkbox2:checkbox:checked').length;
        if (numberOfChecked === 2) {
            //$(this).prop('checked', false);
            $('input.chkbox2:checkbox:not(:checked)').prop('disabled',true);
           
        }
        else
        {
             $('input.chkbox2:checkbox:not(:checked)').prop('disabled' , false);
            // $('input.chkbox:checkbox:not(:checked)').prop('checked' , true);
        }
    });
    
   
    

});
$(document).ready(function()
{
     $('form').on('submit', function (e) 
     {
          var numbermale = $('input.chkbox:checkbox:checked').length;
          var numberfemale = $('input.chkbox2:checkbox:checked').length;
           if (numbermale < 2 && numberfemale < 2) {
               alert("please select 2 sac in each category");
               location='dash.html';
               return false;
           }
     });
});
</script>

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
</style>
</head>

<body>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
               
                <div class="card-body">
                    <h2 class="title">Vote for Male SAC</h2>
                    <form method="post" action="dash" >
                        <div class="input-group">
                            <% 
                               ResultSet rs = getdata.type3();
                            %>
                        <table>
                        
                       <tr>
                        <th>Name</th>
                        <th>Course</th>
                        <th>Vote Appeal</th>
                        <th>Picture</th>
                        <th>Vote</th>
                    </tr>
                    <% while(rs.next())
                    {
                       %> <tr>
                        <td><%= rs.getString(1)%></td>
                        <td><%= rs.getString(6)%></td>
                        <td><%= rs.getString(7)%></td>
                        <td><a href="/images/image.jpeg">Click</a></td>
                        <td><input type="checkbox" class="chkbox" name="male" value="<%= rs.getString(2)%>"></td>
                    
                    </tr>
                     <% }%>
                </table>
            </div>
                <br>
                 <h2 class="title">Vote for Female SAC</h2>
                  <div class="input-group">
                      <% ResultSet rss = getdata.type2(); %>
                            <table  >
                        
                       <tr>
                        <th>Name</th>
                        <th>Course</th>
                        <th>Vote Appeal</th>
                        <th>Picture</th>
                        <th>Vote</th>
                    </tr>
                   <% while(rss.next())
                    {
                       %> <tr>
                        <td><%= rss.getString(1)%></td>
                        <td><%= rss.getString(6)%></td>
                        <td><%= rss.getString(7)%></td>
                        <td><a href="/images/image.jpeg">Click</a></td>
                        <td><input type="checkbox" class="chkbox2" name="female" value="<%= rss.getString(2)%>"></td>
                    
                    </tr>
                     <% }%>
                </table>
            </div>
            <br>
                        <div>
                            <center><button class="btn btn--pill btn--green" type="submit">Submit</button></center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->