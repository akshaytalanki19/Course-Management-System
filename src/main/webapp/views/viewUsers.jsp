<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 
 
 <%@ include file="adminnavbar.jsp" %>
 
<br> 
 
<h3 align="center"><u>View All Employees</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>EMAIL ID</td> 

</tr> 
 
<c:forEach items="${userdata}"  var="user"> 
<tr> 
<td><c:out value=">${user.id}" /></td> 
<td><c:out value="${ user.name}" /></td> 
<td><c:out value="${user.email}" /></td> 
<td>
<a href='<c:url value="view?id=${user.id}"></c:url>'>View</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>