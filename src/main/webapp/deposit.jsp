<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Deposit Page</title>
</head>
<body>
<div class="abc">
<form action="Deposit" method="get">
<h1>In which account you want to deposit</h1>
<br>
<input type="radio" id="savings" name="savings" value="savings">
 <label for="savings">Savings</label><br>
 <input type="radio" id="primary" name="savings" value="primary">
 <label for="primary">primary</label><br><br>
Enter amount to be deposited:<input type="text" name="deposited"><br><br>
Enter the reason to deposit:<input type="text" name="reason"><br>
<br>
<input type="submit" value="Deposit">
</form>

</div>
</body>
</html>