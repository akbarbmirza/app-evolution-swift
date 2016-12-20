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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }
    
    @IBAction func addToCartPressed(_ sender: Any) -> Void {
        
        print("Button Tapped")
        
    }
    
}
