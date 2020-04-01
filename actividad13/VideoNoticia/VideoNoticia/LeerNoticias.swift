//
//  LeerNoticias.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import Foundation


class LeerNoticias{


    func getNoticias(termino:@escaping (_ datos:[String])->()){
      var titulos:[String] = []
      let liga = "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=VaT2MsLH1vVtxQbT6ia9dj0r46UGoWMv"
      let url = URL(string: liga)!
       let task = URLSession.shared.dataTask(with: url, completionHandler: { dato, respuesta, error in
        
        guard let dato = dato else {return}
            do{
                let resultado:NSDictionary = try JSONSerialization.jsonObject(with: dato, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
            
                for valor in resultado["results"] as! [NSDictionary]{
                    titulos.append(valor["title"] as! String)
               
                }
                DispatchQueue.main.async{
                if titulos.count == 20{
                termino(titulos)
                    
                }
                    }
            }catch{
              print("Error en lectura")
                
            }
        })
      task.resume()
    
    }


}
