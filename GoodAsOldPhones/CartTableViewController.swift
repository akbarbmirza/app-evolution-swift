//
//  CartTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Akbar Mirza on 12/29/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {
    
    var orders: [Order]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        orders = Orders.readOrdersFromArchive()
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return orders?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath)
        
        let order = orders?[indexPath.row]
        
        cell.textLabel?.text = order?.product?.name

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            // Delete the row from the data source
            orders?.remove(at: indexPath.row)
            
            if let orders = orders {
                let _ = Orders.saveOrdersToArchive(orders: orders)
            }
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            

        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
}
