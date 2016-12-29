//
//  Orders.swift
//  GoodAsOldPhones
//
//  Created by Akbar Mirza on 12/29/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import Foundation

class Orders: NSObject, NSCoding {
    
    var orders: [Order]?
    
    // set an initializer for our NSCoding Orders class
    required init?(coder aDecoder: NSCoder) {
        self.orders = aDecoder.decodeObject(forKey: "orders") as! [Order]?
    }
    
    // set an encode function
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.orders, forKey: "orders")
    }
    
    class func archiveFilePath() -> String {
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        return documentDirectory.appendingPathComponent("cart.archive").path
    }
    
    class func readOrdersFromArchive() -> [Order]? {
        return NSKeyedUnarchiver.unarchiveObject(withFile: archiveFilePath()) as? [Order]
    }
    
    class func saveOrdersToArchive(orders: [Order]) -> Bool {
        return NSKeyedArchiver.archiveRootObject(orders, toFile: archiveFilePath())
    }
}
