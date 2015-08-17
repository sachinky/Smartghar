<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
</head>
<script type="text/javascript">
function validateForm()
{
var uname=document.forms["form1"]["username"].value;
var password=document.forms["form1"]["password"].value;
if(uname==null || uname=="")
  {
  alert("Please provide Username");
  return false;
  }
if(password==null || password=="")
{
alert("Please provide Password");
return false;
}
}
</script>
<body>

	<h2>User Login Page</h2>
	<form name="form1" method="post" action="login.htm" onsubmit="return validateForm()">
		<table>
			<tr>
				<td>Enter Username</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="LOGIN"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">${MESSAGE}</td>
			</tr>
		</table>
		
	</form>
</body>
</html>