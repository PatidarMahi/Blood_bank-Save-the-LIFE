<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp?m=deleted");
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp?m=Not");
}
%>