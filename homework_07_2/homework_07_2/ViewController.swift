//
//  ViewController.swift
//  homework_07_2
//
//  Created by Vladislav on 14.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    let colors: [UIColor] = [.black, .blue, .brown, .cyan, .darkGray, .gray]
    let sizeSideSquare: Int = 10
    var originSquare = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        startButton.layer.cornerRadius = startButton.frame.height / 2
    }

    @IBAction func start(_ sender: UIButton) {
        sender.isHidden = true
        
        var h = Int(view.frame.height)
        var w = Int(view.frame.width)
        
        var countRow = h / sizeSideSquare
        var countCollumn = w / sizeSideSquare
        
        for row in 1...countRow {
            originSquare.x = CGFloat.zero
            for collumn in 1...countCollumn {
                var randomIndex: Int = Int.random(in: 0..<colors.count)
                
                var newView = UIView()
                newView.backgroundColor = colors[randomIndex]
                newView.frame.size = CGSize(width: sizeSideSquare, height: sizeSideSquare)
                newView.frame.origin = originSquare
                
                var newLabel = UILabel()
                var text = newView.backgroundColor?.accessibilityName
                
                newLabel.frame.size = CGSize(width: sizeSideSquare, height: sizeSideSquare)
                newLabel.text = text
                newLabel.textColor = .white
                newLabel.adjustsFontSizeToFitWidth = true
                
                newView.addSubview(newLabel)
                view.addSubview(newView)
                
                originSquare.x += CGFloat(sizeSideSquare)
            }
            originSquare.y += CGFloat(sizeSideSquare)
        }
    }
    
}

