<%@ page import="java.sql.*" %>
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
	String nombre=request.getParameter("nombre");
	String apellido=request.getParameter("apellido");
	String usuario=request.getParameter("usuario");
	String contra=request.getParameter("contra");
	String pais=request.getParameter("pais");
	String tecno=request.getParameter("tecnologias");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","fraga","adminfraga");
		Statement st=miConexion.createStatement();
		st.executeUpdate("INSERT INTO usuarios (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('" + nombre +"','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')");
		out.println("Registrado exitosamente");
	}catch(Exception e){
		
		out.println("Error en el ingreso de datos");
		e.printStackTrace();
	}
	
%>
</body>
</html>