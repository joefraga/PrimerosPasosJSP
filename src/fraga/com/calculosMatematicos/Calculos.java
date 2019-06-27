package fraga.com.calculosMatematicos;

public class Calculos {
	private static int resultado;

	public static int metodoSuma(int n1, int n2){
		resultado=n1+n2;
		return resultado;	
	}

	public static int metodoResta(int n1, int n2){
		resultado=n1-n2;
		return resultado;	
	}
	
	public static int metodoMultiplica(int n1, int n2){
		resultado=n1*n2;
		return resultado;	
	}
}
