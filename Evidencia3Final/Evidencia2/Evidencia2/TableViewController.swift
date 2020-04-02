//
//  TableViewController.swift
//  Evidencia2
//
//  Created by admin on 4/2/20.
//  Copyright © 2020 usuario invitado. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
    let tableData = ["Austria","Australia","Srilanka","Japan"]
    
    var filteredTableData = [String]()
    
    var resultSearchController = UISearchController()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.resultSearchController = ({
            
            let controller = UISearchController(searchResultsController: nil)
            
            controller.searchResultsUpdater = self
            
            controller.dimsBackgroundDuringPresentation = false
            
            controller.searchBar.sizeToFit()
            
            self.tableView.tableHeaderView = controller.searchBar
            
            return controller
            
        })()
        
        // Reload the table
        
        self.tableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (self.resultSearchController.isActive) {
            
            return self.filteredTableData.count
            
        }
            
        else {
            
            return self.tableData.count
            
        }
        
    }
    
     func tableView(_tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as! UITableViewCell
    
        if (self.resultSearchController.isActive) {
    
    cell.textLabel?.text = filteredTableData[indexPath.row]
    
    return cell
    
    }
    
    else {
    
    cell.textLabel?.text = tableData[indexPath.row]
    
    return cell
    
    }
    
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController)
        
    {
        
        filteredTableData.removeAll(keepingCapacity: false)
        
        let searchPredicate = NSPredicate(format: "SELF CONTAINS[c] %@", searchController.searchBar.text!)
        
        let array = (tableData as Array).filteredArrayUsingPredicate(searchPredicate)
        
        filteredTableData = array as! [String]
        
        self.tableView.reloadData()
        
    }
    
}
