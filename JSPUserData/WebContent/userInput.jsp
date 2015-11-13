<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data Input Form</title>
<style type="text/css">
h3{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:#0099cc;
text-align: center; text-decoration: underline }
table{font-family: Calibri; color:white; font-size: 11pt; font-style: normal;width: 50%;
text-align:; background-color: #0099cc; border-collapse: collapse; border: 2px solid navy}
table.inner{border: 0px}
</style>
</head>
<body>
	<h3> User Data Input Form</h3>
	<form method="post" action="UserServlet">
		<table align="center" cellpadding="10">
			<tr>
				<td>*User Name :</td>
				<td><input type="text" name="username" maxlength="30"></td>
				<td>user name cannot be empty</td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="text" name="age" maxlength="3"></td>
			</tr>
			<tr>
				<td>Sex :</td>
				<td>
					<select name="sex">
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Active :</td>
				<td>
					<select name="active">
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Tags :</td>
				<td><input type="text" name="tags" maxlength="100"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<button type="submit">Submit</button>
				<button type="reset">Reset</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>