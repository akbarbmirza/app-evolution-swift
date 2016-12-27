//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Akbar Mirza on 12/24/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = [
            "1907 Wall Set", "1921 Dial Phone",
            "1937 Desk Set", "1984 Motorola Portable"
        ]
    }
    
    // The Table View Controller suns some table-specific functions
    // automatically
    
    override func tableView(_
        tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        
        if let pNames = productNames {
            return pNames.count
        }
        
        return 0
    }
    
    override func tableView(_
        tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell",
                                                 for: indexPath)
        
        let productName = productNames?[indexPath.row] // set the product name
            
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        
        cell.imageView?.image = #imageLiteral(resourceName: "image-cell1")
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            // get the cell that was tapped
            guard let cell = sender as? UITableViewCell,
                // get the index path for that cell
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
            
            // use the index path to get the productName from the array
            // send the product name to the product view controller
            productVC?.productName = productNames?[indexPath.row]
        }
    }

}
