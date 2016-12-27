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
    
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productNameLabel.text = productName
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }
    
    @IBAction func addToCartPressed(_ sender: Any) -> Void {
        
        print("Button Tapped")
        
    }
    
}
