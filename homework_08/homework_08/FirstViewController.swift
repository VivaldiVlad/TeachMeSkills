//
//  FirstViewController.swift
//  homework_08
//
//  Created by Vladislav on 25.05.2021.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var view = storyboard.instantiateViewController(identifier: "SecondViewController") as SecondViewController
        view.modalTransitionStyle = .coverVertical
        view.modalPresentationStyle = .fullScreen
    }
}
