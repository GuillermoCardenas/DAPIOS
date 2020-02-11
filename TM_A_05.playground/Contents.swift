import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona{
    var saludo=""
    var pasos=""
    func Saludar(saludo:String)-> String{
        self.saludo="Mucho Gusto "+saludo
        return self.saludo
    }
    func Caminar(pasos:Int)->String {
        self.pasos="Numero de pasos caminados:\(pasos)"
        return self.pasos;
    }
}


//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla{
    var ancho:Int
    var alto:Int
    
    init(ancho:Int, alto:Int){
        self.ancho = ancho
        self.alto = alto
    }
    
}

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int{
    var segundos:Int {
        return self*60*60
    }
}
//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String{
    func diadesemana()->Int{
        switch self{
        case "Lunes","lunes":
            return 2;
        case "Martes","martes":
            return 3;
        case "Miercoles","miercoles":
            return 4;
        case "Jueves","jueves":
            return 5;
        case "Viernes","viernes":
            return 6;
        case "Sabado","sabado":
            return 7;
        case "Domingo","domingo":
            return 1;
        default:
            return 0;
        }
    }
}



/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
var opcional:Int?

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]

let dias=["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var opcion:Int?

opcion=dias["DF"]




