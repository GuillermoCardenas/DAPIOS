import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]
var index:Int=0

for i in costo_referencia{
    costo_referencia[index] = (i*0.16)+i
    index += 1
}
costo_referencia
/*:
 ### Valor por tipo y por referencia
 A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
 */
var costo_referencia_2:[Float] = [8.3,10.5,9.9]

func Impuesto(costo:[Float]) -> [Float]{
    var resultado:[Float] = []
    for i in costo{
        resultado.append((i*0.16)+i)
    }
    return resultado
}

Impuesto(costo: costo_referencia_2)




//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
let sumaDos = {(x:Int, y:Int) -> Int in return x + y}
func sumaTres(Valor1:Int,Valor2:Int,Valor3:Int) -> Int{
    return sumaDos(Valor1,Valor2) + Valor3
    
}

sumaTres(Valor1: 2, Valor2: 1, Valor3: 1)





/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/

func GenericInt(valor1:Int, valor2:Int)->(Int, Int){
    let temporal = valor1
    let valor1_1=valor2
    let valor2_1=temporal
    return(valor1_1,valor2_1)
}
GenericInt(valor1:2, valor2:1)


//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.


let suma = {(a:Int,b:Int)-> Int in return a + b}
extension Array{
    func Transformar(arreglo:[Int],x:Int)->[Int]{
        var resultado:[Int]=[];
        for valor in 0...arreglo.count-1{
            resultado.append(suma(arreglo[valor],x))
        }
        return resultado
}
}
var datos = [3,7,9,2]
datos
datos.Transformar(arreglo:datos,x:2)
/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios = [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map{i in return ((i*0.16)+i)}
impuesto
//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var precio_menor = impuesto.filter{i in i>6.0}
precio_menor




