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


<h1>WITHDRAW FORM</h1>
<form action="withdrawcode.jsp" method="post">
<table class="center">

<tr>
<td>Account Number:</td>
<td><input type="text" name="actno"></td>
</tr>

<tr>
<td>Name:</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="password" name="pass"></td>
</tr>

<tr>
<td>Amount:</td>
<td><input type="number" name="amt"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" value="Submit">
<input type="reset" value="Reset"></th>
</tr>

</table>
</form>
</body>
</html>