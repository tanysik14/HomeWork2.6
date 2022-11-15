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
    
    var name: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeNameLabel.text = name
        emojiLabel.text = "👋"
    }

    
    
    @IBAction func buttonOut(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
