//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Akbar Mirza on 12/20/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let p = product {
            productNameLabel.text = p.name
            
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
    }
    
    @IBAction func addToCartPressed(_ sender: Any) -> Void {
        
        print("Button Tapped")
        
        guard let product = product, let price = product.price else {
            return
        }
        
        // create a UIAlert Controller
        let alertController =
            UIAlertController(title: "Saved to Cart",
                              message: "Saved to cart with a price of \(price)",
                              preferredStyle: .alert)
        
        // create a UIAlertAction
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        // set action to our action
        alertController.addAction(action)
        
        // create an order
        let order = Order()
        order.order_id = 1
        order.product = product
        
        // load the orders we have so far
        var orders = Orders.readOrdersFromArchive()
        
        // append to orders
        orders?.append(order)
        
        // if orders exists...
        if let orders = orders {
            // if our save orders is successful...
            if (Orders.saveOrdersToArchive(orders: orders)) {
                // show alert
                present(alertController, animated: true, completion: nil)
            }
        }
        
        
        
        
        
    }
    
}
