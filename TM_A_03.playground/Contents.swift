import UIKit
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*: 
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/
var entero:Int = 2;
var booleano:Bool = false;
var decimal:Float = 3.1416
var string:String = "Este es un string";

var entero_1 = 3;
var booleano_1 = true;
var decimal_1 = 101.5;
var string_1 = "Este es otro un string";


/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
var asociacion1 = ("string1","string2");
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.
var asociacion2 = (2,4);


/*: 
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var numeros = [1,2,3,4,5,6,7,8,9,10];
//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
var diasSemana  = [1:"Lunes",2:"Martes",3:"Miercoles",4:"Jueves",5:"Viernes",6:"Sabado",7:"Domingo",];
