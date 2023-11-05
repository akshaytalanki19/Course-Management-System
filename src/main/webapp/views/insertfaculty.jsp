<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

</style>
</head>
<body>



<br>

<h3 align=center><u>Add Admin</u></h3>

<br>

<form method="post" action="insertdatafaculty" modelAttribute="staff">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input path="name" name="name" required="required"></input>
</td>
</tr>

<tr>
<td><label>password</label></td>
<td><input path="password" name="pwd" required="required"/></td>
</tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>





</body>
</html>
