<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Update</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />

</head>


<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Snap Search</a></h1>
			
		</div>
		
		<%@ include file = "checksession.jsp" %>
		
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
				
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
				
				<li><a href="logout.htm" accesskey="7" title="">Logout</a></li>
			</ul>
		</div>
	</div>
	
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			
			
				<h1>Update your Information Here</h1></br>
				<font color=black size=3>
				
				<%! String username;
					int f=0;
				%>
				
				
				
				<c:forEach var="listValue" items="${list}">
						
<form method="post" action="updatecook.htm">

<table>
<tr>
<td>User Name</td>
<td></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="password"/>  </td>
</tr>

<tr>
<td>Name </td>
<td><input type="text" name="name"/>  </td>
</tr>

<tr>
<td>Email </td>
<td><input type="text" name="email"/>  </td>
</tr>

<tr>
<td>Phone</td>
<td><input type="text" name="phone"/>  </td>
</tr>

<tr>
<td>Service </td>
<td><select name="service"> 
<option value="Cook" >Cook</option>
</select></td>
</tr>

<tr>
<td>Experience in Years</td>
<td><input type="text" name="ex"/>  </td>
</tr>

<tr>
<td>Charge</td>
<td><input type="text" name="charge"/>  </td>
</tr>

<tr>
<td>Negotiable</td>
<td><input type="checkbox" name="negotiable" value="1" checked="true"/>
</td>
</tr>

<tr>
<td>Location</td>
<td><select name="location"> 
<option value="Gurgaon" >Gurgaon</option>
</select>
</td>
</tr></table>
				
		<input class="button-style" type="submit" value="Submit"/>
</form>

</c:forEach> 				
</font>
				
				
			
		</div>
	</div>
</div>

<div id="footer" class="container">
	<center><p>&copy; SnapSearch. All rights reserved.</p></center>
</div>
</body>
</html>
