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
    }
    

    @IBAction func resulrButtonLogIn() {
        if nameText.text == "User" || passwordText.text == "Password" {
            func prepare(for seque: UIStoryboardSegue, sender: Any?) {
                guard seque.destination is WelcomeViewController else { return }
            }
        } else {
                showAlert(title: "Invalid login or password", message:  "Please, enter correct login and password")
            }
        }
  
    
    @IBAction func buttonForgoutName() {
     showAlert(title: "Oops!", message: "Your name is User")
  
    }
    
    
    @IBAction func buttonForgoutPassword() {
     
    }
    
}
    
extension LoginViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in

        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

