<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<html>
	<form:form action="loginProcess.do" commandName="loginForm"
		method="post">
		<table>
			<tr>
				<td>
					<b>First Name</b>
				</td>
				<td>
					<form:input path="firstName" />
				</td>
			</tr>
			<tr>
				<td>
					<b>Last Name</b>
				</td>
				<td>
					<form:input path="lastName" />

				</td>
			</tr>
			<tr>
				<td>
					<b>Email</b>
				</td>
				<td>
					<form:input path="email" />

				</td>
			</tr>
		</table>
		
		<input  type="submit" value="Submit"></input>
	</form:form>
</html>