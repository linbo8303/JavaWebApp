<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="org.webapp.service.UserDetailsService"%>
<%@page import="org.webapp.data.UserDetails"%>
<%@page import="org.webapp.data.Gender"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/style.css"/> 
	<title>User Details Data</title>
</head>
<body>
	<div id="container">
		<table align="center">
			<thead>
				<tr>
					<th>User ID</th>
					<th>User Name</th>
					<th>Age</th>
					<th>Sex</th>
					<th>Active</th>
					<th>Tags</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<UserDetails> users = UserDetailsService.getListOfUsers();
					for (UserDetails u : users) {
				%>
				<tr>
					<td><%=u.getUserId()%></td>
					<td><%=u.getUsername()%></td>
					<td><%=u.getAge()%></td>
					<td><%=u.getSex()%></td>
					<td><%=u.isActive()%></td>
					<td><%=u.getTags()%></td>
				</tr>
				<%}%>
			</tbody>
		</table>
		<br/>
	</div>
</body>
</html>