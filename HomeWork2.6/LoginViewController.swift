//
//  ViewController.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 12.11.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resulrButtonLogIn()
        buttonForgoutName()
     
    }
    
    
    @IBAction func resulrButtonLogIn() {
        if nameText.text == "Tatsiana" && passwordText.text == "Pauliukova" {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let welcomeVC = segue.source as? WelcomeViewController
                welcomeVC?.welcomeNameLabel.text = "Wellcome, \(nameText.text)!"
            }
        } else {
            showAlert(title: "Invalid login or password", message:  "Please, enter correct login and password")
        }
    }
    
    
    @IBAction func buttonForgoutName() {
        showAlert(title: "Oops!", message: "Your name is Tatsiana")
    }
    
    
    @IBAction func buttonForgoutPassword() {
        showAlert(title: "Oops!", message: "Your password is Pauliukova")
    }

}

    
extension LoginViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordText.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

