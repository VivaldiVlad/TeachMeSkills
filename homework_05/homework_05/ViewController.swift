


// Массив из кортежей - возвести Int в квадрат, отфильтровать только четные Int и упорядочить по строкам по возрастанию

// создать кастомный класс Пациент, свойства: имя, ДР, диагноз, адрес (отдельный кастомный класс Адрес)

// Класс Beer, свойства: имя, цена, страна, остаток объема.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1 task
        var numbers = [Int]()
        for i in 1...10 {
            var n = Int.random(in: 1..<11)
            numbers.append(n)
        }
        var tuples = [(Int, String)]()
        for number in numbers {
            var tuple = (n: number, s: "this is \(number)")
            tuples.append(tuple)
        }
        
        var tuplesWithSquaredInt = tuples.map({ $0.0 * $0.0 })
        var tuplesWithDivideOnTwo = tuples.filter({ $0.0 % 2 == 0 })
        var tuplesOrderByForString = tuples.sorted(by: { $0.1 < $1.1 })
        
        print("tuples")
        print(tuples)
        print("tuplesWithSquaredInt")
        print(tuplesWithSquaredInt)
        print("tuplesWithDivideOnTwo")
        print(tuplesWithDivideOnTwo)
        print("tuplesOrderByForString")
        print(tuplesOrderByForString)
        
        var p = Patient()
        print(p.name)
        print(p.birthDate)
        print(p.diagnosis)
        print(p.adress.nameStreet)
        print(p.adress.numberHome)
        print(p.adress.numberApartment)
    }


}

