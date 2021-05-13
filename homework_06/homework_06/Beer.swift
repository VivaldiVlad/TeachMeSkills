//
//  Beer.swift
//  homework_06
//
//  Created by Vladislav on 12.05.2021.
//

import Foundation

public class Beer {
    
    var name: String
    var price: Double
    var country: String
    var count: Int
    var countSold: Int
    
    init(name name: String = "Beer", price price: Double = 0, country country: String = "Russia", count count: Int = 10) {
        self.name = name
        self.price = price
        self.country = country
        self.count = count
        countSold = 0
    }
}
