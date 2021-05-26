//
//  ViewController.swift
//  carsGame
//
//  Created by Vladislav on 26.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func startPressed(_ sender: Any) {
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var view = storyboard.instantiateViewController(identifier: "GameViewController") as GameViewController
        view.modalPresentationStyle = .fullScreen
        view.modalTransitionStyle = .flipHorizontal
        present(view, animated: true)
    }
    @IBAction func settingsPressed(_ sender: Any) {
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var view = storyboard.instantiateViewController(identifier: "SettingsViewController") as SettingsViewController
        view.modalPresentationStyle = .fullScreen
        view.modalTransitionStyle = .flipHorizontal
        present(view, animated: true)
    }
    @IBAction func recordsPressed(_ sender: Any) {
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var view = storyboard.instantiateViewController(identifier: "RecordsViewController") as RecordsViewController
        view.modalPresentationStyle = .fullScreen
        view.modalTransitionStyle = .flipHorizontal
        present(view, animated: true)
    }
}

