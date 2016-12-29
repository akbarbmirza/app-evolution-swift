//
//  Order.swift
//  GoodAsOldPhones
//
//  Created by Akbar Mirza on 12/29/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import Foundation

class Order: NSObject, NSCoding {
    var order_id: Int?
    var product: Product?
    
    override init() {
        super.init()
    }
    
    // set an initializer for our NSCoding Orders class
    required init?(coder aDecoder: NSCoder) {
        self.order_id = aDecoder.decodeObject(forKey: "order_id") as! Int?
        self.product = aDecoder.decodeObject(forKey: "product") as! Product?
    }
    
    // set an encode function
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.order_id, forKey: "order_id")
        aCoder.encode(self.product, forKey: "product")
    }
}
