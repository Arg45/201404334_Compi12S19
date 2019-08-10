package Practica1;

public class Tabla_error {
    String lexema,tipo,descripcion;
    int line,colum;

    public Tabla_error(String lexema, int line, int colum, String tipo, String descripcion) {
        this.lexema = lexema;
        this.tipo = tipo;
        this.descripcion = descripcion;
        this.line = line;
        this.colum = colum;
    }
}
