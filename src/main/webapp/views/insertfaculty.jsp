<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<br>

<h3 align=center><u>Add Admin</u></h3>

<br>

<form:form method="post" action="insertfaculty" modelAttribute="customer">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr>
<td><label>password</label></td>
<td><form:input path="password" required="required"/></td>
</tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form:form>



</body>
</html>
