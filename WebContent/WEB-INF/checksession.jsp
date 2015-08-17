<%
	String str = (String)session.getAttribute("username");
	if(str==null)
		response.sendRedirect("index.jsp");
%>