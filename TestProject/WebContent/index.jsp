<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Вход в систему</title>
<link href="bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body><br><br><br> 
<center>
<h1>Вход в сиcтему</h1>
</center> 
<form action="Controller" method="POST">
<table align="center">
<tr>
<th align="right"> Имя пользователя:</th>
<td><input type="text" name ="txtname"></td>
</tr>
<tr>
<th align="right"> Пароль:</th>
<td><input type="password" name ="txtpassword"></td>
</tr>
<tr>
<td colspan="2"  align="right">
<input type="submit" value ="Войти" >
</td>
</tr>
<tr>
<td colspan="2"  align="right">
<a href="sign-up.jsp">Регистрация</a>
</td>
</tr>
</table>
</form>
</body>
</html>