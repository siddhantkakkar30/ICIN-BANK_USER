<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style>
input[type=text], select, textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
input[type=password], select, textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

</style>
</head>
<body>
<div class="container">
  <form action="Register" method="post">

    <label for="fname">First Name</label>
    <input type="text" name="fname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" name="lname" placeholder="Your last name..">
    
    <label for="pan">Primary Account Number</label>
    <input type="text" name="pan" placeholder="Enter primary account number....">
    
    <label for="san">Saving Account Number</label>
    <input type="text" name="san" placeholder="Enter Saving account number..">

	 <label for="uname">Username</label>
    <input type="text" name="uname" placeholder="Your username..">
    
     <label for="contact">Contact</label>
    <input type="text" name="mobile" placeholder="Your contact..">
    
     <label for="pass">Password</label>
    <input type="password" name="pass" placeholder="Your password..">
     <label for="email">Email</label>
    <input type="text" name="email" placeholder="Your email..">
    <input type="submit" value="Submit">
 </form>
</div>
</body>
</html>