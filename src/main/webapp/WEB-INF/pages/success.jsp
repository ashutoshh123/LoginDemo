<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>

	<form:form  commandName="homeForm"
		method="post">
		<table>
			<tr>
				<td>
					<b>Name</b>
				</td>
				<td>
					${homeForm.firstName} 
				</td>
			</tr>
			<tr>
				<td>
					<b>Last Name</b>
				</td>
				<td>
					${homeForm.lastName}
				</td>
			</tr>
			<tr>
				<td>
					<b>Email</b>
				</td>
				<td>
					${homeForm.email}
				</td>
			</tr>
		</table>
		
		
	</form:form>
</html>