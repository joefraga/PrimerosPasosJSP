<html>
<body>
<h1 style=text-align.center>
Ejemplo de declaraciones

</h1>

<%!
	private int resultado;

	public int metodoSuma(int n1, int n2){
		resultado=n1+n2;
		return resultado;	
	}

	public int metodoResta(int n1, int n2){
		resultado=n1-n2;
		return resultado;	
	}
	
	public int metodoMultiplica(int n1, int n2){
		resultado=n1*n2;
		return resultado;	
	}
	
%>

El resultado de la suma es: <%= metodoSuma(7,5) %>

<br>
El resultado de la resta es: <%= metodoResta(7,5) %>

<br>
El resultado de la multiplicaciones es: <%= metodoMultiplica(7,5) %>


</body>


</html>