package Practica1;

import java_cup.runtime.*;
import java.util.LinkedList;


%%


%{
    public static LinkedList<Token> ListaTokens = new LinkedList<Token>();

    public static LinkedList<Tabla_error> TablaEl = new LinkedList<Tabla_error>();

    public static LinkedList<ErrorLexico> ListaErroresLexicos = new LinkedList<ErrorLexico>();

    public LinkedList<ErrorLexico> getlistaErrLexi() {
        return A_Lexico.ListaErroresLexicos;
    }
    public LinkedList<Token> getlistaTokens() {
        return A_Lexico.ListaTokens;
    }

%}

%cupsym sym
%class A_Lexico
%cup
%public
%unicode
%line
%column
%char
%ignorecase

%full



IGUAL = "="
COMILLAS = "\""
COMA = ","
PUNTOYCOMA = ";"
MAS = "+"
MENOS = "-"
POR = "*"
DIV = "/"
DOSPUNTOS = ":"
LLAVE_A = "{"
LLAVE_C = "}"
CORH_A = "["
CORH_C = "]"
PAR_A = "("
PAR_C = ")"
ADMI_C = "!"
MENOR = "<"
MAYOR = ">"
PUNTO = "."

CLAVES = "Claves"
REGISTROS = "Registros"
ARCHIVO = "Archivo"
NUMERICO = "Numerico"
TIPO_CADENA = "Cadena"
LEER_ARCHIVO = "LeerArchivo"
SUMAR = "Sumar"
CONTAR = "Contar"
PROMEDIO = "Promedio"
CONTAR_SI = "ContarSi"
OBTENER_SI = "ObtenerSi"
IMPRIMIR = "Imprimir"
GRAFICAR = "Graficar"


ENTERO = [+|-]*[0-9]+  
ID  = [A-Za-zñÑ][_0-9A-Za-zñÑ]+
COMENTARIO_LINEA = "//" [^\r\n]* [^\r\n]
COMENTARIO_VARIASL = ("/*" [^/] "*/")
CADENA = (" \" " [^\"] " \" ")

SPACE   = [\ \r\t\f\t]
ENTER   = [ \n]


%%
<YYINITIAL> {IGUAL}         { return new Symbol(sym.IGUAL, yyline, yycolumn,yytext());}
<YYINITIAL> {COMILLAS}      { return new Symbol(sym.COMILLAS, yyline, yycolumn,yytext());}
<YYINITIAL> {COMA}          { return new Symbol(sym.COMA, yyline, yycolumn,yytext());}
<YYINITIAL> {PUNTOYCOMA}    { return new Symbol(sym.PUNTOYCOMA, yyline, yycolumn,yytext());}
<YYINITIAL> {MAS}           { return new Symbol(sym.MAS, yyline, yycolumn,yytext());}
<YYINITIAL> {MENOS}         { return new Symbol(sym.MENOS, yyline, yycolumn,yytext());}
<YYINITIAL> {POR}           { return new Symbol(sym.POR, yyline, yycolumn,yytext());}
<YYINITIAL> {DIV}           { return new Symbol(sym.DIV, yyline, yycolumn,yytext());}
<YYINITIAL> {DOSPUNTOS}     { return new Symbol(sym.DOSPUNTOS, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAVE_A}       { return new Symbol(sym.LLAVE_A, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAVE_C}       { return new Symbol(sym.LLAVE_C, yyline, yycolumn,yytext());}
<YYINITIAL> {CORH_A}        { return new Symbol(sym.CORH_A, yyline, yycolumn,yytext());}
<YYINITIAL> {CORH_C}        { return new Symbol(sym.CORH_C, yyline, yycolumn,yytext());}
<YYINITIAL> {PAR_A}         { return new Symbol(sym.PAR_A, yyline, yycolumn,yytext());}
<YYINITIAL> {PAR_C}         { return new Symbol(sym.PAR_C, yyline, yycolumn,yytext());}
<YYINITIAL> {ADMI_C}        { return new Symbol(sym.ADMI_C, yyline, yycolumn,yytext());}
<YYINITIAL> {MENOR}         { return new Symbol(sym.MENOR, yyline, yycolumn,yytext());}
<YYINITIAL> {MAYOR}         { return new Symbol(sym.MAYOR, yyline, yycolumn,yytext());}
<YYINITIAL> {PUNTO}         { return new Symbol(sym.PUNTO, yyline, yycolumn,yytext());}


<YYINITIAL> {CLAVES}                       { return new Symbol(sym.CLAVES, yyline, yycolumn,yytext());}
<YYINITIAL> {REGISTROS}                    { return new Symbol(sym.REGISTROS, yyline, yycolumn,yytext());}
<YYINITIAL> {ARCHIVO}                      { return new Symbol(sym.ARCHIVO, yyline, yycolumn,yytext());}
<YYINITIAL> {NUMERICO}                     { return new Symbol(sym.NUMERICO, yyline, yycolumn,yytext());}
<YYINITIAL> {TIPO_CADENA}                  { return new Symbol(sym.TIPO_CADENA, yyline, yycolumn,yytext());}
<YYINITIAL> {LEER_ARCHIVO}                 { return new Symbol(sym.LEER_ARCHIVO, yyline, yycolumn,yytext());}
<YYINITIAL> {SUMAR}                        { return new Symbol(sym.SUMAR, yyline, yycolumn,yytext());}
<YYINITIAL> {CONTAR}                       { return new Symbol(sym.CONTAR, yyline, yycolumn,yytext());}
<YYINITIAL> {PROMEDIO}                     { return new Symbol(sym.PROMEDIO, yyline, yycolumn,yytext());}
<YYINITIAL> {CONTAR_SI}                    { return new Symbol(sym.CONTAR_SI, yyline, yycolumn,yytext());}
<YYINITIAL> {OBTENER_SI}                   { return new Symbol(sym.OBTENER_SI, yyline, yycolumn,yytext());}
<YYINITIAL> {IMPRIMIR}                     { return new Symbol(sym.IMPRIMIR, yyline, yycolumn,yytext());}
<YYINITIAL> {GRAFICAR}                     { return new Symbol(sym.GRAFICAR, yyline, yycolumn,yytext());}

<YYINITIAL> {ENTERO}                  { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());}
<YYINITIAL> {ID}                      { return new Symbol(sym.ID, yyline, yycolumn,yytext());}
<YYINITIAL> {COMENTARIO_LINEA}        { return new Symbol(sym.COMENTARIO_LINEA, yyline, yycolumn,yytext());}
<YYINITIAL> {COMENTARIO_VARIASL}      { return new Symbol(sym.COMENTARIO_VARIASL, yyline, yycolumn,yytext());}
<YYINITIAL> {CADENA}                  { return new Symbol(sym.CADENA, yyline, yycolumn,yytext());}

<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}


 . {System.out.println("Error lexico: "+yytext()+" linea: "+yyline+" columna: "+yycolumn);
    Tabla_error eror = new Tabla_error(yytext(),yyline,yycolumn,"Error Lexico","El simbolo no pertenece al lenguaje.");
    TablaEl.add(eror);
   }