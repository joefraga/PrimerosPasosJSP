<html>

<body>
<h1>Objetos Predefinidos JSP </h1>
Peticion datos del navegador <%= request.getHeader("User-agent")  %>

<br><br>
Peticion de idioma utilizado <%= request.getLocale() %>
</body>
</html>