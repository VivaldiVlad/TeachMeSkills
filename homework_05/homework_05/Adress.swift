//
//  Adress.swift
//  homework_05
//
//  Created by Vladislav on 24.04.2021.
//

import Foundation

class Adress {
    let nameStreet: String
    let numberHome: Int
    let numberApartment: Int
    
    init(_ street: String = "none", _ home: Int = -1, _ apartment: Int = -1){
        nameStreet = street
        numberHome = home
        numberApartment = apartment
    }
}
