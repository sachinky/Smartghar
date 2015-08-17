<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>SnapSearch Home Page</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function() {
     
    	  $(".same").hide();
    	 
    	  
    	  
    	     	  
    	  
    	  $("button").click(function(){
    		  
    		  var id = this.id;
    		  
    		    $("#c").show();
    		    $("#d").show();
    		    $("#e").show();
    		    $("#f").show();
    	        $("#sample"+id).toggle();
    	        $("#sampl"+id).toggle();
    	        $("#samp"+id).toggle();
    	        $("#sam"+id).toggle();
    	        if ($(this).text() == "View More") 
    	        { 
    	           $(this).text("View Less"); 
    	        } 
    	        else 
    	        { 
    	           $(this).text("View More"); 
    	        }; 
    	        this.toggle();
    	    });
       
     
    });
</script>
<style>
table { 
    display: table;
    border-collapse: separate;
    border-spacing: 5px;
    border-color: gray;
}
</style>
</head>


<body>
<% int count=0; %>>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Snap Search</a></h1>
			
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
				
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
				
				<li><a href="logout.htm" accesskey="7" title="">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="banner">
		
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="content">
			
			<h1>Welcome : <%= session.getAttribute("username")  %></h1><br>
			<h2>Search Results</h2>
				
				<table style="font-size:18px">
				  <tr style="color:black">
   				 <th>Name</th>
    			 <th>Charges</th>
    			 <th>Experience in Years</th>
    			 <th class="same" id="c">Email Address</th>
    			 <th class="same" id="d">Phone Number</th>
    			 <th class="same" id="e">Service</th>
    			 <th class="same" id="f">Location</th>
    			 
    			 
 				 </tr>
				
			<c:forEach var="listValue" items="${list}">
			<tr style="color:blue">
				<td>${listValue.username}</td>
				<td>${listValue.charge}</td>
				<td>${listValue.ex}</td>
				
			
				<td class="same" id="sample<%=count%>">${listValue.email}</td>
				<td class="same" id="sampl<%=count%>">${listValue.phone}</td>
				<td class="same" id="samp<%=count%>">${listValue.service}</td>
				<td class="same" id="sam<%=count%>">${listValue.location}</td>
				<td><button class="button-style" id="<%=count%>">View More</button></td>
				</tr>
				<%count++; %>
			</c:forEach>
			</table>
		

				<!--<center><font color="black">OR<br></font><p class="button-style"><a href="#">Register Here</a></p></center>-->
			</div>
		</div>
	</div>		
</div>
			<div id="sidebar">
				
</div>

<div id="footer" class="container">
	<center><p>&copy; SnapSearch. All rights reserved.</p></center>
</div>
</body>
</html>
