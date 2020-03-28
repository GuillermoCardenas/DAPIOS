//
//  ViewController.swift
//  Actividad112
//
//  Created by admin on 3/27/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
   
    
    let numeros: [UIImage] =   [
        
    UIImage(named: "1")!,
    UIImage(named: "2")!,
    UIImage(named: "3")!,
    UIImage(named: "4")!,
    UIImage(named: "5")!,
    UIImage(named: "6")!,
    UIImage(named: "7")!,
    UIImage(named: "8")!,
    UIImage(named: "9")!,
    UIImage(named: "10")!,
    UIImage(named: "11")!,
    UIImage(named: "12")!,
    UIImage(named: "13")!,
    UIImage(named: "14")!,
    UIImage(named: "15")!,
    UIImage(named: "16")!,
    UIImage(named: "17")!,	
    UIImage(named: "18")!,
    UIImage(named: "19")!,
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numeros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.numerosImageView.image = numeros[indexPath.item]
    
        return cell
    }

}


