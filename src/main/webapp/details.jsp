<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href='https://css.gg/credit-card.css' rel='stylesheet'>
<meta charset="ISO-8859-1">
<style>
/* Container Border */
.mydiv {
  border-left: 6px solid #5F9EA0;
  padding:20px;
  background-color: lightgrey;

}
.mydiv3
{
border-bottom: 6px solid #5F9EA0;
  padding:20px;
  background-color: lightgrey;
}
.mydiv1{
  border-bottom: 6px solid #5F9EA0;
  padding:20px;
  background-color: lightgrey;
}
 .gg-home {
 background:
 linear-gradient(to left,
 currentColor 5px,transparent 0)
 no-repeat 0 bottom/4px 2px,
 linear-gradient(to left,
 currentColor 5px,transparent 0)
 no-repeat right bottom/4px 2px;
 box-sizing: border-box;
 position: relative;
 display: block;
 transform: scale(var(--ggs,1));
 width: 18px;
 height: 14px;
 border: 2px solid;
 border-top: 0;
 border-bottom: 0;
 border-top-right-radius: 3px;
 border-top-left-radius: 3px;
 border-bottom-right-radius: 0;
 border-bottom-left-radius: 0;
 margin-bottom: -2px
 }

 .gg-home::after,
 .gg-home::before {
 content: "";
 display: block;
 box-sizing: border-box;
 position: absolute
 }

 .gg-home::before {
 border-top: 2px solid;
 border-left: 2px solid;
 border-top-left-radius: 4px;
 transform: rotate(45deg);
 top: -5px;
 border-radius: 3px;
 width: 14px;
 height: 14px;
 left: 0
 }

 .gg-home::after {
 width: 8px;
 height: 10px;
 border: 2px solid;
 border-radius: 100px;
 border-bottom-left-radius: 0;
 border-bottom-right-radius: 0;
 border-bottom: 0;
 left: 3px;
 bottom: 0
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
 .gg-credit-card {
 box-sizing: border-box;
 position: relative;
 display: block;
 transform: scale(var(--ggs,1));
 width: 24px;
 height: 18px;
 border: 2px solid;
 border-radius: 4px
}

.gg-credit-card::after,
.gg-credit-card::before {
 content: "";
 display: block;
 box-sizing: border-box;
 position: absolute;
 border-radius: 3px;
 width: 24px;
 left: -2px;
 height: 2px;
 background: currentColor;
 top: 9px
}

.gg-credit-card::before {
 width: 6px;
 left: 2px;
 top: 3px
} 
</style>
<title>Account Details</title>
</head>
<body>
<%
System.out.println("tilla");
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
	out.println("<div class='mydiv3'>");
	out.println("<h3>");
	out.println("Primary balance ");
	out.println("</h3>");
	out.println(rs.getString(7));
	out.println("<br><h3>Savings balance </h3>"+rs.getString(8));
	out.println("<br><h3>Primary account number </h3>"+rs.getString(11));
	out.println("<br><h3>Savings account number </h3>"+rs.getString(12));
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
<br>
<div class='mydiv'>
<i class="gg-credit-card"></i>
<h3>Go to deposit:</h3><form action="deposit.jsp">
<input type="submit" value="Go to deposit">
</form>
</div>
<br>
<br>
<div class='mydiv'>
<i class="gg-credit-card"></i>
<h3>Go to Withdraw:</h3><form action="withdraw.jsp">
<input type="submit" value="Go to withdraw">
</form>
</div>
<br>
<div class="mydiv1">
<i class="gg-home"></i>
<h3>Go to Home Page:</h3><form action="home.jsp">
<input type="submit" value="Home">
</form>
</div>
</body>
</html>