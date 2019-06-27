<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	//leyendo datos del formulario 
	String ciudad_favorita=request.getParameter("ciudad_favorita");

	//crear la cookie
	Cookie cookie_ciudad=new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
	//vida de la cookie un año
	cookie_ciudad.setMaxAge(365*24*60*60);
	//enviar a usuario para que se guarde en su maquina
	response.addCookie(cookie_ciudad);

%>

Gracias por enviar tus preferencias
<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>
</body>
</html>