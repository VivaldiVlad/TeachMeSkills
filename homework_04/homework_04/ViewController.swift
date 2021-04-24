//
//  ViewController.swift
//  homework_04
//
//  Created by Vladislav on 24.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        ДЗ -
//        1. Создать и заполнить массив целочисленных значений произвольными цифрами (10 значений)
//        2. Создать массив кортежей из целого числа и строки.
//        3. Для каждого из значений массива из пункта 1 создать кортеж, где значение целого числа -- элемент массива из пункта 1, а значение строки -- произвольная строка. Добавить созданный кортеж в массив кортежей из пункта 2
//        4. Вывести в консоль массив из пункта 2
//
//        Пример: для массива [1, 2] кортеж примет вид [(1, "Some string 1"), (2, "Some string 2")]
        
        
        // 1 задание
        var numbers = [Int]()
        for i in 1...10 {
            var n = Int.random(in: 1..<11)
            numbers.append(n)
        }
        
        print(numbers)
        
        // 2 задание
        var arrayTuples = [(Int, String)]()
        
        // 3 задание
        for number in numbers {
            var tuple = (n: number, s: "this is \(number)")
            arrayTuples.append(tuple)
        }
        
        // 4 задание
        print(arrayTuples)
    }

}

