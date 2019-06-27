<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center"> </h1>
<%
	//valor por defecto
	String ciudad_favorita="Madrid";

	//lee la cookie la peticion del navegador
	Cookie[] las_cookies=request.getCookies();
	
	//buscar las referencias
	if(las_cookies!=null){
		for(Cookie c:las_cookies){
			if("agencia_viajes.ciudad_favorita".equals(c.getName())){  //estamos valiendo el nombre si coincide
				ciudad_favorita=c.getValue();
				break;
			}
		}
	}
%>
<h2>Vuelos a <%=ciudad_favorita %></h2>

<p>Esto es texto de ejemplo</p>
<p>Esto es texto de ejemplo</p>
<p>Esto es texto de ejemplo</p>

<h2>Hoteles en <%=ciudad_favorita %></h2>

<p>Esto es texto de ejemplo</p>
<p>Esto es texto de ejemplo</p>
<p>Esto es texto de ejemplo</p>

<h2>Descuentos en hoteles de <%=ciudad_favorita %></h2>

<p>Esto es texto de ejemplo</p>
<p>Esto es texto de ejemplo</p>
<p>Esto es texto de ejemplo</p>
</body>
</html>