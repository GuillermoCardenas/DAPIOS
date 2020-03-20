//
//  ViewController.swift
//  Evidencia2
//
//  Created by AlumnoUTM on 3/19/20.
//  Copyright © 2020 usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var viewpequena: UIView!
    
    
    @IBAction func refresh(_ sender: Any) {
        UIView.animate(withDuration: 5, animations: {
            self.viewpequena.backgroundColor = UIColor.black
        }, completion: nil)
        UIView.animate(withDuration: 5, animations: {
            self.viewpequena.backgroundColor = UIColor.gray
        }, completion: nil)
        UIView.animate(withDuration: 5, animations: {
            self.viewpequena.backgroundColor = UIColor.blue
        }, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }


}

