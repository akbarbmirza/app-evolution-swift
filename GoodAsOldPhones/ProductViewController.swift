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
        
    }
    
}
