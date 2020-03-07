<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-color: lavender">
	<h1>
		<center>User Registration</center>
	</h1>
	<center>
		<form:form action="/registration1" modelAttribute="user" method="POST">
			<div>${status}</div>
			<table>
				<tr>
					<td><sf:label path="FirstName">FirstName</sf:label></td>
					<td><sf:input path="FirstName" id="FirstName" /></td>
					
				</tr>
				<tr>
					<td><sf:label path="LastName">Password</sf:label></td>
					<td><sf:input path="LastName" id="LastName" /></td>
					
				</tr>
				<tr>
					<td><input type="submit" value="submit" id="submit"
						name="submit"></td>
					<td><input type="reset" value="clear" id="clear" name="clear"></td>
				</tr>
			</table>

		</form:form>
	</center>


</body>
</html>
