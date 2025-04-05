package modelo;

public class ConversorMoneda {
    private static final double USD = 540.0;
    private static final double EUR = 580.0;
    
    //variable static para que se pueda usar en todo el programa 
    // que sea final para que no se pueda modificar siendo una constante
    // double porque no puede ser entero sino que a veces da resultado decimal o casi siempre.

    public static double convertir(double cantidadCRC, String moneda) { 
        if (moneda.equalsIgnoreCase("USD")) { //en lugar de un try catch para ignorar mayusculas o minusculas.
            return cantidadCRC / USD; // hace la division  por el valor de la variable de arriba
        } else if (moneda.equalsIgnoreCase("EUR")) {
            return cantidadCRC / EUR;
        } else {
            return 0;
        }
    }
}
