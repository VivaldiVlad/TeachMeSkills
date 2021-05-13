//
//  ViewController.swift
//  homework_06
//
//  Created by Vladislav on 12.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beerOne: UILabel!
    @IBOutlet weak var beerTwo: UILabel!
    @IBOutlet weak var beerThree: UILabel!
    @IBOutlet weak var beerFour: UILabel!
            
    @IBOutlet weak var countSoldBeerOne: UILabel!
    @IBOutlet weak var countSoldBeerTwo: UILabel!
    @IBOutlet weak var countSoldBeerThree: UILabel!
    @IBOutlet weak var countSoldBeerFour: UILabel!
    
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var totalSum: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        beerOne.text = BeerManager.shared.getNameBeer(index: 0)
        beerTwo.text = BeerManager.shared.getNameBeer(index: 1)
        beerThree.text = BeerManager.shared.getNameBeer(index: 2)
        beerFour.text = BeerManager.shared.getNameBeer(index: 3)
        
        
    }

    @IBAction func sellBeerOne(_ sender: Any) {
        info.text = BeerManager.shared.sellBeer(index: 0, count: 1)
        var countSoldBeer: Int = BeerManager.shared.getCountSoldBeer(index: 0)
        countSoldBeerOne.text = "Продано: \(countSoldBeer)"
        totalSum.text = BeerManager.shared.getTotalSellSum()
    }
    @IBAction func sellBeerTwo(_ sender: Any) {
        info.text = BeerManager.shared.sellBeer(index: 1, count: 1)
        var countSoldBeer: Int = BeerManager.shared.getCountSoldBeer(index: 1)
        countSoldBeerTwo.text = "Продано: \(countSoldBeer)"
        totalSum.text = BeerManager.shared.getTotalSellSum()
    }
    @IBAction func sellBeerThree(_ sender: Any) {
        info.text = BeerManager.shared.sellBeer(index: 2, count: 1)
        var countSoldBeer: Int = BeerManager.shared.getCountSoldBeer(index: 2)
        countSoldBeerThree.text = "Продано: \(countSoldBeer)"
        totalSum.text = BeerManager.shared.getTotalSellSum()
    }
    @IBAction func sellBeerFour(_ sender: Any) {
        info.text = BeerManager.shared.sellBeer(index: 3, count: 1)
        var countSoldBeer: Int = BeerManager.shared.getCountSoldBeer(index: 3)
        countSoldBeerFour.text = "Продано: \(countSoldBeer)"
        totalSum.text = BeerManager.shared.getTotalSellSum()
    }
    
    @IBAction func startNewDay(_ sender: Any) {
        countSoldBeerOne.text = "Продано: 0"
        countSoldBeerTwo.text = "Продано: 0"
        countSoldBeerThree.text = "Продано: 0"
        countSoldBeerFour.text = "Продано: 0"
        
        BeerManager.shared.endOfTheDay()
        info.text = "Действий не совершено"
        totalSum.text = BeerManager.shared.getTotalSellSum()
    }
}

