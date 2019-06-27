<%@ page import="java.util.*" %>
<html>

<body>
<form name="Formulario_Compra" action="Lista_Compra.jsp">
 
  <p>Artíulos a comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Agua </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Leche </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      Pan </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Manzanas </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Carne </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Pescado </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p>
</form>

<h1>titulo 1</h1>
<h2>Carro de Compra:</h2>

<ul>
<%
List<String> lista_productos=(List<String>)session.getAttribute("misproductos");

if(lista_productos==null){
	lista_productos=new ArrayList<String>();
	session.setAttribute("misproductos", lista_productos);	
}


String[] elementos=request.getParameterValues("articulos");
if(elementos!=null){
	for(String s:elementos){
		//out.println("<li>" + s + "</li>");
		lista_productos.add(s);
	}
}

//imprimimos los elementos
for(String s:lista_productos){
	out.println("<li>" + s + "</li>");
}
%>
</ul>

</body>

</html>