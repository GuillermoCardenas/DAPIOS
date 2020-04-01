//
//  NoticiasVC.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.self.noticias = datos//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit


class NoticiasVC: UITableViewController {

    var noticias:[String] = []
    var noti:[String] = ["1","2"]
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let inset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0);
        self.tableView.contentInset = inset
        self.tableView.scrollIndicatorInsets = inset
        LeerNoticias().getNoticias { (datos) in
            self.noticias = datos
            self.tableView.reloadData()
        }
       
        }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if self.noticias.isEmpty == true{
            return self.noticias.count
        }else{
            return self.noticias.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        if self.noticias.isEmpty == true{
            celda.textLabel!.text = self.noti[indexPath.row]
        }else{
            celda.textLabel!.text = self.noticias[indexPath.row]
        }
        
        print(self.noti.count)
        return celda
    }
   

    }
    
    

