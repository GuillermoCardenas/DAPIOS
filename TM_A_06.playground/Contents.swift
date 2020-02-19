import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/

infix operator ^^

func ^^(a:Int, b:Int)->Int{
    let resultado = Int(pow(Double(a),Double(b)))
    return resultado
}

//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
let array = [2,5,3,4]

prefix operator |>

prefix func |>(coleccion:[Int])->[Int]{
    var col = [Int](coleccion)
    col.sort()
    return col
    
}

|>array

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
let Array = [2,3,4,5]
class modificador{
    
    var array:[Int]
    init(valores:[Int]){
        
        self.array = valores
        
}
    subscript(index:Int)->Int{
        get{
            return array[index]
        }
        set(nuevovalor){
            
            if(array[index] % 2 == 0){
                array[index] = nuevovalor
            }else{
                print("Index no multiplicado por el valor 2")
            }
            
            
        }
        
    }
}



let valor=modificador(valores:Array)
valor[2]
valor[0]=10
valor[1]=5

valor.array




//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
let posicionEnemigos = [CGPoint(x: 2, y: 3),CGPoint(x: 0, y: 0),CGPoint(x: 3, y: 2)]
struct position{
    
   
    var pos:[CGPoint]
    
    init(coordenadas:[CGPoint]) {
        self.pos = coordenadas
    }
    
  subscript(index:Int)->CGPoint{
        get{
            return pos[index]
    }
    set(nuevaCoordenada){
        
        pos[index] = nuevaCoordenada
        
     
    }
}
}

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let coleccion = ["A":1, "B":2,"C":3]

func ExisteValor(index:String){
    
    guard let check = coleccion[index] else {
        print("No se encontro el valor buscado en la coleccion")
        return
    }
    print("Se encontro el valor \(check) en el diccionario")
}

ExisteValor(index: "A")





