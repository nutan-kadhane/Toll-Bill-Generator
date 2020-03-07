<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
	</head>

	<body>
		<h1 align="center">Toll Bill Generator</h1>
<sf:form action="/success" method="post" modelAttribute="user">
	<div>${status}</div>		
		<table >
      		 
    <tr>
				<td><sf:label path="user_name">Name:</sf:label></td>
				<td><sf:input path="user_name" id="user_name"></sf:input></td>
			</tr>
			
			<tr>
				<td><sf:label path="dateOfBirth">Date of Birth:</sf:label></td>
				<td><sf:input  path="dateOfBirth" id="dateOfBirth"></sf:input></td>
			</tr>
			
			<tr>
				<td><sf:label path="mobile_no">Mobile Number:</sf:label></td>
				<td><sf:input path="mobile_no"  id="mobileNumber"></sf:input></td>
			</tr>
			
			<tr>
				<td><sf:label path="email_id">Email-id:</sf:label></td>
				<td><sf:input path="email_id" id="emailId"></sf:input>(This will be your user Id.)</td>
			</tr>
			
			<tr>
				<td><sf:label path="password">Password:</sf:label></td>
				<td><sf:input path="password"  id="password"></sf:input></td>
			</tr>
				
			<tr>
				<td><input type="submit" id="register" value="Register"></input></td>
				<td><input type="Reset" id="reset" value="Reset"></input></td>
			</tr>
			
		</table></sf:form>
	</body>

</html>
