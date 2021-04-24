//
//  Patient.swift
//  homework_05
//
//  Created by Vladislav on 24.04.2021.
//

import Foundation

class Patient {
    let name: String
    let birthDate: Date
    let diagnosis: String
    let adress: Adress
    
    init(_ name: String = "Unknow", _ birthDate: Date = Date.init(), _ diagnosis: String = "none", _ adress: Adress = Adress.init()){
        self.name = "Default"
        self.birthDate = birthDate
        self.diagnosis = diagnosis
        self.adress = adress
    }
}
