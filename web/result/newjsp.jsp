    <%@page import="model.DataCon"%>
   <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,java.sql.*" %>
    <%@ page import="com.google.gson.Gson"%>
    <%@ page import="com.google.gson.JsonObject"%>
     
    <%
    Gson gsonObj = new Gson();
    //Map<Object,Object> map = null;
    List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
    String dataPoints = null;
     
    try{
    	//Statement st=new DataCon().getStatement();
        DataCon d=new DataCon();
    	String xVal = null;
        int yVal;
    	//ResultSet rs = d.getStatement().executeQuery("select name,roll from nominees");
    	ResultSet resultSet = d.getStatement().executeQuery("select name,votenumber from nominees,votecount where votecount.id=nominees.roll;");
    	if(resultSet!=null)
        {
            System.out.println("data recieved");
        }
    	while(resultSet.next()){
    		xVal = resultSet.getString(1);
                System.out.println(xVal);
    		yVal = resultSet.getInt(2);
                System.out.println(yVal);
    		Map<Object,Object> map = new HashMap<Object,Object>(); 
                map.put("label", xVal); 
                map.put("y", yVal);
                list.add(map);
    		dataPoints = gsonObj.toJson(list);
    	}
        System.out.println(list);
        System.out.println(dataPoints);
    	    }
    catch(SQLException e){
    	out.println("<div  style='width: 50%; margin-left: auto; margin-right: auto; margin-top: 200px;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same.</div>");
    	dataPoints = null;
    }
    %>
     
    <!DOCTYPE HTML>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        
    window.onload = function() { 
     
    <% if(dataPoints != null) { %>
    var chart = new CanvasJS.Chart("chartContainer", {
    	animationEnabled: true,
    	exportEnabled: true,
    	title: {
    		text: "JSP Column Chart from Database"
    	},
    	data: [{
    		type: "column", //change type to bar, line, area, pie, etc
                indexLabel: "{y}",
    		dataPoints: <% out.print(dataPoints); %>
    	}]
    });
    chart.render();
    <% } %> 
     
    };
    </script>
    </head>
    <body>
        <br>
        <br>
        <br>
    <div id="chartContainer" style="height: 370px; width: 70%; margin-left:auto; 
    margin-right:auto;"></div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    </body>
    </html>                              