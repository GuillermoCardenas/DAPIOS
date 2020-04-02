//
//  TablaVC.swift
//  Evidencia2
//
//  Created by AlumnoUTM on 3/19/20.
//  Copyright © 2020 usuario invitado. All rights reserved.
//

import UIKit

class TablaVC: UITableViewController {

    let cellReuseIdentifier = "celda"
    
    var db:DB = DB()
    
    var materiales:[Materiales] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        db.insert(id: 1, nombre: "Tornillo", cantidad: 100)
        db.insert(id: 2, nombre: "Tuerca", cantidad: 100)
        db.insert(id: 3, nombre: "Martillo", cantidad: 2)
        db.insert(id: 4, nombre: "Taladro", cantidad: 2)
        db.insert(id: 5, nombre: "Remaches", cantidad: 50)
    
        materiales = db.read()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return materiales.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let celda:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        celda.textLabel?.text = "Nombre: " + materiales[indexPath.row].nombre + ", " + "Cantidad: " + String(materiales[indexPath.row].cantidad)
        
        return celda
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "Alerta", message: "¿Desea borrar este elemento?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Si", style: UIAlertAction.Style.destructive, handler: { action in
            switch action.style{
            case .default:
                print("default")
                print("row: \(self.materiales[indexPath.row].id)")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                self.db.deleteByID(id: self.materiales[indexPath.row].id)
                if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                    appDelegate.window?.rootViewController?.dismiss(animated: true, completion: nil)
                    (appDelegate.window?.rootViewController as? UINavigationController)?.popToRootViewController(animated: true)
                }
            }}))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
}
