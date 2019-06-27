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
	String usuario=request.getParameter("usuario");
	String contra=request.getParameter("contra");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","fraga","adminfraga");
		Statement st=miConexion.createStatement();
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE Usuario='" + usuario + "' AND Contrasena='" + contra + "'");
		if(rs.next()){
			out.println("Usuario Valido");	
		}else{
			out.println("Usuario Inválido");
		}
		
	}catch(Exception e){
		
		out.println("Error en el ingreso de datos");
		e.printStackTrace();
	}
	
%>
</body>
</html>