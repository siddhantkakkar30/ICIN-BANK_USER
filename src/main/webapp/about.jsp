<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
</head>
<style>
input[type=button], input[type=submit], input[type=reset] {
  background-color: #6495ED;
  border: none;
  color: white;
  padding: 12px 20px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
.abc{
border-left: 6px solid #5F9EA0;
  padding:20px;
  background-color: lightgrey;
  }
  </style>
<body>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bank","root","ThinkPad@66");
	String un=(String) session.getAttribute("username");
	String pass=(String) session.getAttribute("pass");
	System.out.println(un);
	PreparedStatement s = con.prepareStatement("select * from customer where user_name=? and pass=?");
	s.setString(1, un);
	s.setString(2,pass);
	ResultSet rs=s.executeQuery();
	rs.next();
	out.println("<div class='abc'");
	out.println("<h4>");
	out.println("<h4>First Name</h4> "+rs.getString(2));
	out.println("</h4>");
	out.println("<br><h4>Last Name</h4> "+rs.getString(3));
	out.println("<br><h4>User Name</h4> "+rs.getString(4));
	out.println("<br><h4>Primary Account Number</h4> "+rs.getString(11));
	out.println("<br><h4>Saving Account Number</h4> "+rs.getString(12));
	out.println("<br><h4>Primary Account Balance</h4> "+rs.getString(7));
	out.println("<br><h4>Savings Account Balance</h4> "+rs.getString(8));
	out.println("<br><h4>Contact </h4>"+rs.getString(6));
	out.println("<br><h4>Email</h4> "+rs.getString(5));
	out.println("<br>");
	out.println("</div");
	
}
catch (ClassNotFoundException e) {
	
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<br>
<div class="abc">
<h3>Go to Home Page:</h3><form action="home.jsp">
<input type="submit" value="Home">
</form>
</div>