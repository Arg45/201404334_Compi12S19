package Practica1;

public class ErrorSintactico {
    public int fila;
    public int columna;
    public String Caracter;
    public String Descripcion;

    public ErrorSintactico()
    {
        fila = 0;
        columna = 0;
        Caracter = "";
        Descripcion = "";
    }
    public ErrorSintactico(int fila, int columna, String caracter, String descripcion)
    {
        this.fila = fila;
        this.columna = columna;
        this.Caracter = caracter;
        this.Descripcion = descripcion;
    }
}
