package Practica1;

public class ErrorLexico {
    public int fila;
    public int columna;
    public String Caracter;
    public String Descripcion;
    
    public ErrorLexico(int fila, int columna, String caracter, String descripcion)
    {
        this.fila = fila;
        this.columna = columna;
        this.Caracter = caracter;
        this.Descripcion = descripcion;
    }

    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }

    public String getCaracter() {
        return Caracter;
    }

    public void setCaracter(String Caracter) {
        this.Caracter = Caracter;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
        
}
