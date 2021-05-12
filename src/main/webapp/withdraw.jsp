<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw</title>
<style>
.abc{
border-left: 6px solid #5F9EA0;
  padding:20px;
  background-color: lightgrey;
  }
  input[type=button], input[type=submit], input[type=reset] {
  background-color: #6495ED;
  border: none;
  color: white;
  padding: 12px 20px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>

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
	
	out.println("<h3>Primary balance </h3>"+rs.getString(7));
	out.println("<h3>Savings balance </h3>"+rs.getString(8));
	
}
catch (ClassNotFoundException e) {
	
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<div class="abc">
<form action="Withdraw" method="get">
<h1>From which account you want to withdraw</h1>
<br>
<input type="radio" id="savings" name="savings" value="savings">
 <label for="savings">Savings</label><br>
 <input type="radio" id="primary" name="savings" value="primary">
 <label for="primary">primary</label><br><br>
Enter amount to be withdrawn:<input type="text" name="withdraw"><br><br>
Enter reason to withdraw: <input type="text" name="reason">
<br>
<input type="submit" value="Withdraw">
</form>
</div>
</body>
</html>