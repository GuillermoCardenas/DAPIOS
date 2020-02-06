import UIKit
/*:
# Playground - Actividad 4
* Condicionales y Ciclos
* Funciones
* Enumareción
*/



/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
 var datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for dato in datos{
    print("Numero: \(dato)")
}


//: C) Encontrar los valores menores a 5
for dato in datos{
    if(dato<5){
        print("El numero \(dato) es menor que 5")
    }
    
}

/*:
### Funciones
A) Crea la función "suma" que reciba dos parámetros de tipo entero regresando la suma de ambos números.
*/
func suma(numero1:Int, numero2:Int)->Int{
    return numero1+numero2
}
suma(numero1:2,numero2:2)

//: B) Crear la función "potencia" que reciba dos parámetros de tipo entero, el primer parámetro para el numero base y el segundo la potencia a elevar, regresando el resultado de la potencia.
func potencia(base:Int, potencia:Int)->Double{
    return pow(Double(base),Double(potencia))
}

potencia(base:2,potencia: 2)

/*:
### Enumeraciones
A) Crea la enumaración "meses" para definir tipos de datos basados en los meses del año.
*/
enum meses: Int{
    case Enero = 1
    case Febrero = 2
    case Marzo = 3
    case Abril = 4
    case Mayo = 5
    case Junio = 6
    case Julio = 7
    case Agosto = 8
    case Septiembre = 9
    case Octubre = 10
    case Noviembre = 11
    case Diciembre = 12
}

//: B) Crear la función "numeroMes" que reciba el tipo de dato "meses" y regrese el numero del mes correspondiente

//: C) Para regresar el numero de mes correspondiente utilizar la "switch"
func numeroMes(mes:meses)->Int{
    
    switch mes{
    case .Enero:
        return mes.rawValue
    case .Febrero:
        return mes.rawValue
    case .Marzo:
        return mes.rawValue
    case .Abril:
        return mes.rawValue
    case .Mayo:
        return mes.rawValue
    case .Junio:
        return mes.rawValue
    case .Julio:
        return mes.rawValue
    case .Agosto:
        return mes.rawValue
    case .Septiembre:
        return mes.rawValue
    case .Octubre:
        return mes.rawValue
    case .Noviembre:
        return mes.rawValue
    case .Diciembre:
        return mes.rawValue
    }
}
numeroMes(mes: .Diciembre)




