//
//  viewController2.swift
//  Evidencia2
//
//  Created by AlumnoUTM on 3/19/20.
//  Copyright © 2020 usuario invitado. All rights reserved.
//

import UIKit

class viewController2: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var cantidad: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func insertar(_ sender: Any) {
    
        
        if let nombrecheck = nombre.text, !nombrecheck.isEmpty{
        
        let db:DB = DB()
        var materiales:[Materiales] = []
            let name: String = nombre.text!
            let quanty: Int = Int(cantidad!.text!)!
        
        materiales = db.read()
        let id = materiales.count
            var contador:Int = 0
            var idfija:Int = 0
            
            for elementos in materiales{
                contador = contador + 1
                if contador == id {
                   idfija = elementos.id + 1
                }
            }
            
        db.insert(id: idfija, nombre: name, cantidad: quanty)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.window?.rootViewController?.dismiss(animated: true, completion: nil)
                (appDelegate.window?.rootViewController as? UINavigationController)?.popToRootViewController(animated: true)
            }
            
        }
    }
    

}
