//
//  BeerManager.swift
//  homework_06
//
//  Created by Vladislav on 13.05.2021.
//

import UIKit

class BeerManager {

    static let shared = BeerManager()
    
    private var beers: [Beer]
    private var totalSellSum: Double
    
    init() {
        beers = [Beer(name: "A", price: 10, country: "Russia", count: 9),
                 Beer(name: "B", price: 20, country: "Hermany", count: 19),
                 Beer(name: "C", price: 30, country: "Belgia", count: 29),
                 Beer(name: "D", price: 40, country: "Britan", count: 39)]
        
        totalSellSum = 0
    }
    
    func sellBeer(index index: Int, count count: Int) -> String {
        if(beers[index].count - count < 0) {
            return "Пиво \(beers[index].name) закончилось."
        }
        beers[index].count -= count
        beers[index].countSold += count
        totalSellSum += beers[index].price * Double(count)
        return "Продано пиво \(beers[index].name) на сумму \(beers[index].price * Double(count)) $"
    }
    
    func getTotalSellSum() -> String {
        return "\(totalSellSum) $"
    }
    
    func endOfTheDay() {
        beers = [Beer(name: "A", price: 10, country: "Russia", count: 9),
                 Beer(name: "B", price: 20, country: "Hermany", count: 19),
                 Beer(name: "C", price: 30, country: "Belgia", count: 29),
                 Beer(name: "D", price: 40, country: "Britan", count: 39)]
        
        totalSellSum = 0
    }
    
    func getNameBeer(index index: Int) -> String {
        return beers[index].name
    }
    
    func getCountSoldBeer(index index: Int) -> Int {
        return beers[index].countSold
    }
}
