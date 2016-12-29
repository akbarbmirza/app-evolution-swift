//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Akbar Mirza on 12/27/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import Foundation

class Product: NSObject, NSCoding {
    
    ////////////////////////////////////////////////////////////////////////////
    // Fields
    ////////////////////////////////////////////////////////////////////////////
    var name: String?
    var productImage: String?
    var cellImage: String?
    var price: Double?
    
    override init() {
        super.init()
    }
    
    // set an initializer for our NSCoding Orders class
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as! String?
        self.productImage = aDecoder.decodeObject(forKey: "productImage") as! String?
        self.cellImage = aDecoder.decodeObject(forKey: "cellImage") as! String?
        self.price = aDecoder.decodeObject(forKey: "price") as! Double?;
    }
    
    // set an encode function
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.productImage, forKey: "productImage")
        aCoder.encode(self.cellImage, forKey: "cellImage")
        aCoder.encode(self.price, forKey: "price")
    }
}
