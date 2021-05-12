<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered</title>
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
<div class="abc">
you have been registered!!
<form action="login.jsp" method="post">
<input type="submit" value="login">
</form>
</div>
</body>
</html>