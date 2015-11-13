<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data Input Confirmation</title>
<style type="text/css">
h3{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:#0099cc;
text-align: center; text-decoration: underline }
table{font-family: Calibri; color:white; font-size: 11pt; font-style: normal;width: 20%;
text-align:; background-color: #0099cc; border-collapse: collapse; border: 2px solid navy}
table.inner{border: 0px}
</style>
</head>
<body>
	<H3>User Add Success</H3>
	<form method="post" action="MoreUserServlet">
		<table align="center" cellpadding="10">
		<tr><td colspan="2" align="center">
		<button type="submit">More User Data</button>
		</td></tr>
		</table>
	</form>
	<BR/>
	<form method="post" action="UserDataDisplay">
		<table align="center" cellpadding="10">
		<tr><td colspan="2" align="center">
		<button type="submit">Display User Data</button>
		</td></tr>
		</table>
	</form>
</body>
</html>