<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <%@ page import="java.util.*, java.sql.*, fraga.com.tags.*" %>
 
 <%
 	ArrayList<Empleado> lista_empleados=new ArrayList<>();
 	Class.forName("com.mysql.cj.jdbc.Driver");
 	try{
 		Connection mi_conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","fraga","adminfraga");
 		Statement st=mi_conexion.createStatement();
 		ResultSet rs=st.executeQuery("SELECT * FROM empleados");
 		while(rs.next()){
 			lista_empleados.add(new Empleado(rs.getString("Nombre"),rs.getString("Apellido"), rs.getString("Puesto"), rs.getDouble("Salario")));
 		}
 		
 		rs.close();
 		mi_conexion.close();
 		
 	}catch(Exception e){
 		out.println("Hubo un error");
 		e.printStackTrace();
 	}
 	
 	pageContext.setAttribute("lista_empleados",lista_empleados);
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.cabecera{
	font-weight:bold
}
</style>

</head>
<body>
	<table border=1>
	<tr class="cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td><td>Bono</td> </tr>
		<c:forEach var="emp" items="${lista_empleados}">
			<tr>		
				<td>${emp.nombre}</td> <td>${emp.apellido}</td> <td>${emp.puesto}</td>
				 
				<td>
					<!--Le vamos a dar aumento de salario a algunos empleados-->
					<c:choose>
					<c:when test="${emp.salario<4000}">${emp.salario+2000}</c:when>
					<c:when test="${emp.salario>4000 && emp.salario<=9000}">${emp.salario+1000}</c:when>
					<c:otherwise>${emp.salario}</c:otherwise>
					</c:choose>				
				</td>
				<td>
					<!--Le vamos a dar bono a los que ganen menos de 10K -->
					<!--<c:if test="${emp.salario<10000}">5000</c:if> -->
					<!--<c:if test="${emp.salario>=10000}">No bono</c:if> -->
					<c:choose>
					<c:when test="${emp.salario<10000}">5000</c:when>
					<c:otherwise>No bono</c:otherwise>
					</c:choose>		
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>