<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header> 
<title>Приветствие</title> 
</header> 
  
<body>  

<font face="Arial" size="5">
   <%@ page import="java.util.Date" %>
<%
Date myDate = new Date(); 
String username=request.getParameter("name");

if ( myDate.getHours()  >= 6 && myDate.getHours() < 10)  
{ 
    out.println("Доброе утро,"+username+"."); 
} 
else  
if ( myDate.getHours() >= 10 && myDate.getHours() < 18 ) 
{ 
	out.println("Добрый день,"+username+"."); 
} 
else 
if ( myDate.getHours() >= 18 && myDate.getHours() < 22 ) 
{ 
	out.println("Добрый вечер,"+username+"."); 
}  
else 
	if ( myDate.getHours() >= 22 && myDate.getHours() <6  ) 
	{ 
		out.println("Доброй ночи,"+username+"."); 
	}  
%> 
 <br>
 <br>
<a href="index.jsp">Выход</a>
</br>
<br>
 </font>
</body>
</html>