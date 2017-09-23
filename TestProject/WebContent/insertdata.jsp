<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Connection"%>
      <%@page import="java.sql.Statement"%>
      <%@page import="java.sql.ResultSet"%>
      
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<% 
String name=request.getParameter("name");
String password=request.getParameter("password");
String confirmpassword=request.getParameter("confirmpassword");

String id = request.getParameter("userId");
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost:5432/";
String dbName = "postgres";
String userId = "postgres";
String DBpass = "gfhjkm";


try{
	Class.forName("org.postgresql.Driver");
	Connection connection=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "gfhjkm");
	Statement st=connection.createStatement();
	if(name=="" || password=="" || confirmpassword==""){
		out.println("Заполните все поля");
	}
	
	else if(!name.matches("[a-zA-Z0-9]+") || (name.length() < 4))
	{
		out.println("Имя пользователя должно быть длиннее 4 символов и состоять из букв английского алфавита ");
	}
	 
	else if(!password.equals(confirmpassword)){
		out.println("Пароли не совпадают");
	}
	
	else if(!password.matches("(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$")){
		out.println("Пароль недостаточно сложен: должны быть цифры, заглавные и строчные буквы. Минимум 8 символов.");
	}
	
	
	else{	
	st.executeUpdate("insert into testproject(name,password)values('"+name+"','"+password+"')");
out.println("Регистрация прошла успешно");
}
}catch(Exception e){
	if(e.getMessage().contains("duplicate key value violates unique constraint")){
		out.println("Такой пользователь уже существует.");
	} else {	
        out.println(e);
    }
}
%>
</body>
<a href="index.jsp">На главную</a>
<a href="sign-up.jsp">Вернуться к регистрации</a>
</html>