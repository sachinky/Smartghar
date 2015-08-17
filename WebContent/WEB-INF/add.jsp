<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
				
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>
	
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			
			
				<h1>Register to provide your services</h1><br>
				<font color=black size=3>
				
				<form:form method="post" action="insertcook.htm" commandName="cook" >

<table>
<tr>
<td><form:label path="username">User Name </form:label></td>
<td><form:input  path="username"/>  </td>
</tr>

<tr>
<td><form:label path="password">Password </form:label></td>
<td><form:input path="password"/>  </td>
</tr>

<tr>
<td><form:label path="name">Name </form:label></td>
<td><form:input path="name"/>  </td>
</tr>

<tr>
<td><form:label path="email">Email </form:label></td>
<td><form:input path="email"/>  </td>
</tr>

<tr>
<td><form:label path="phone">Phone</form:label></td>
<td><form:input path="phone"/>  </td>
</tr>

<tr>
<td><form:label path="service">Service </form:label></td>
<td><form:select path="service"> <form:option value="Cook" /></form:select></td>
</tr>

<tr>
<td><form:label path="ex">Experience in Years</form:label></td>
<td><form:input path="ex"/>  </td>
</tr>

<tr>
<td><form:label path="charge">Charge</form:label></td>
<td><form:input path="charge"/>  </td>
</tr>

<tr>
<td><form:label path="negotiable">Negotiable</form:label></td>
<td><form:checkbox path="negotiable" value="1" checked="true"/>
</td>
</tr>

<tr>
<td><form:label path="location">Location</form:label></td>
<td><form:select path="location"> <form:option value="Gurgaon" /></form:select></td>
</tr></table>
				
				<input class="button-style" type="submit" value="Submit">
</form:form>				
				</font>
				
				
			
		</div>
	</div>
</div>

<div id="footer" class="container">
	<center><p>&copy; SnapSearch. All rights reserved.</p></center>
</div>
</body>
</html>
