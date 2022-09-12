<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SDFC BANK</title>
<link rel="stylesheet" href="home.css">
</head>
<body>
<h1 class="head">SDFC BANK</h1><br><br>

<h2>EXTRAORDINARY SERVICES</h2>

<div class="nav">
<div>
<a href="Home.jsp">Home</a>
<a href="New_act.jsp">New Account</a>
<a href="balance.jsp">Balance</a>
<a href="deposit.jsp">Deposit</a>
<a href="withdraw.jsp">Withdraw</a>
<a href="transfer.jsp">Transfer</a>
<a href="close.jsp">Close A/C</a>
<a href="about.jsp">About us</a>
</div>
</div>
<form action="New_actcode.jsp" method="post">
<h1>OPEN ACCOUNT FORM</h1>
<table class="center">

<tr>
<td>Account Number:</td>
<td><input type="number" name="actno" required></td>
</tr>

<tr>
<td>Name:</td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="password" name="pass" required></td>
</tr>

<tr>
<td>Confirm_password:</td>
<td><input type="password" name="cpass" required></td>
</tr>

<tr>
<td>Amount:</td>
<td><input type="number" name="amt" required></td>
</tr>

<tr>
<td>Address:</td>
<td><textarea rows="2" cols="21" name="add" required></textarea></td>
</tr>

<tr>
<td>Mobile No:</td>
<td><input type="number" name="mob" required></td>
</tr>

<tr>
<th colspan="2"><input type="submit" value="Submit">
<input type="reset" value="Reset"></th>
</tr>


</table>
</form>
</body>
</html>