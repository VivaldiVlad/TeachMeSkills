//
//  ViewController.swift
//  homework_07
//
//  Created by Vladislav on 14.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle: UILabel!
    @IBOutlet weak var upView: UIView!
    
    let step: Int = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circle.layer.cornerRadius = circle.frame.height / 2
        circle.clipsToBounds = true
    }
    
    @IBAction func moveUp(_ sender: Any) {
        move(to: Direction.up)
    }
        
    @IBAction func moveDown(_ sender: Any) {
        move(to: Direction.down)
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        move(to: Direction.left)
    }
    
    @IBAction func moveRight(_ sender: Any) {
        move(to: Direction.right)
    }
       
    private func move(to direction: Direction) {
        switch direction {
            case .up:
                up()
            case .down:
                down()
            case .left:
                left()
            case .right:
                right()
        }
    }
    
    func up() {
        if circle.frame.minY - CGFloat(step) < 0 {
            setMessageError(for: circle)
            return
        }
        circle.center.y -= CGFloat(step)
        circle.text = Direction.up.rawValue
    }
    func down() {
        if upView.frame.maxY - circle.frame.maxY < upView.frame.minY + CGFloat(step) {
            setMessageError(for: circle)
            return
        }
        circle.center.y += CGFloat(step)
        circle.text = Direction.down.rawValue
    }
    func left() {
        if circle.frame.minX - CGFloat(step) < 0 {
            setMessageError(for: circle)
            return
        }
        circle.center.x -= CGFloat(step)
        circle.text = Direction.left.rawValue
    }
    func right() {
        if upView.frame.maxX - circle.frame.maxX < upView.frame.minX + CGFloat(step) {
            setMessageError(for: circle)
            return
        }
        circle.center.x += CGFloat(step)
        circle.text = Direction.right.rawValue
    }
    
    func setMessageError(for label: UILabel) {
        label.text = "Не могу!"
    }
}

fileprivate enum Direction : String {
    case up = "Вверх"
    case down = "Вниз"
    case left = "Влево"
    case right = "Вправо"
}
