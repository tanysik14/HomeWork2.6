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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "👋"
      welcomeNameLabel.text = name
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let loginVC = segue.source as? LoginViewController else { return }
        welcomeNameLabel.text = ("Welcome,\(loginVC.nameTextLogin.text ?? "")!")
    }
    
    
    @IBAction func buttonOut(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
