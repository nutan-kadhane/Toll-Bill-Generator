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
		
		
		<sf:form action="/success1" method="post" modelAttribute="loginuser">
		<table align="center">
      <div>${status}</div>			 
     <tr>
					<td><sf:label path="email_id">EmailID</sf:label></td>
					<td><sf:input path="email_id" id="email_id" /></td>
					
				</tr>
				<tr>
					<td><sf:label path="password">Password</sf:label></td>
					<td><sf:input path="password" id="password" /></td>
					
				</tr>
				<tr>
					<td><input type="submit" value="submit" id="submit"	name="submit"></td>
					<td><input type="reset" value="clear" id="clear" name="clear"></td>
				</tr>
				</table>
			
			
		
		<a href="/UserRegister.jsp">Not user?</a>
			<a href="/AdminRegister.jsp"><input type="button" value="Register as Admin" /></a>
			</sf:form>
	</body>

</html>