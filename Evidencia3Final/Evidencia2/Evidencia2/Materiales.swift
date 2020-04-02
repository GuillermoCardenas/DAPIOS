//
//  Materiales.swift
//  Evidencia2
//
//  Created by admin on 4/2/20.
//  Copyright © 2020 usuario invitado. All rights reserved.
//

import Foundation

class Materiales
{
    
    var nombre: String = ""
    var cantidad: Int = 0
    var id: Int = 0
    
    init(id:Int, nombre:String, cantidad:Int)
    {
        self.id = id
        self.nombre = nombre
        self.cantidad = cantidad
    }
    
}
