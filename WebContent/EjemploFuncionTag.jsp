<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="datos" value="Ana, Lopez, Directora, 75000"> </c:set>
<c:set var="datos_array" value="${fn:split(datos, ',')}"></c:set>
<input type="text" value="${datos_array[0]}"><br>
<input type="text" value="${datos_array[1]}"><br>
<input type="text" value="${datos_array[2]}"><br>
<input type="text" value="${datos_array[3]}">

</body>
</html>