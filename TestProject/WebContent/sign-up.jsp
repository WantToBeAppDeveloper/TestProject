<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<link href="bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body><br><br><br> 
<center>
<h1>Регистрация</h1>
</center> 
<form action="insertdata.jsp">
<table align="center">
<tr>
<th align="right"> Имя пользователя:</th>
<td><input type ="text" name="name" ></td>
</tr>
<tr>
<th align="right"> Пароль:</th>
<td><input type ="password" name="password" id="password"></td>
</tr>
<tr>
<th align="right"> Повтор пароля:</th>
<td><input type ="password" name="confirmpassword" id="confirm_password"></td>
</tr>
<tr>
<td colspan="2"  align="right">
<input type="submit" value="Зарегистрироваться">
</td>
</tr>
</table>
</form>
</body>
</html>