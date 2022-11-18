//
//  WelcomeViewController.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 12.11.22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeNameLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var name = ""
    
//    private let primaryColor = UIColor(
//        red: 210/255,
//        green: 109/255,
//        blue: 230/255,
//        alpha: 1
//    )
//    private let secondaryColor = UIColor(
//        red: 107/255,
//        green: 148/255,
//        blue: 230/255,
//        alpha: 1
//    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeNameLabel.text = "Welcome, \(name)!"
        emojiLabel.text = "👋"
    }
    
}

//    extension UIView {
//        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
//            let gradient = CAGradientLayer()
//            gradient.frame = bounds
//            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
//            gradient.locations = [0.0, 1,0]
//            gradient.startPoint = CGPoint(x: 0, y: 0)
//            gradient.endPoint = CGPoint(x: 0, y: 1)
//            layer.insertSublayer(gradient, at: 0)
//        }
//    }



