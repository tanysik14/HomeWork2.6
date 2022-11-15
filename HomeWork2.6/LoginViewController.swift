//
//  ViewController.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 12.11.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var nameTextLogin: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    var nameTextLoginT: String!
    var passwordTextT: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resulrButtonLogIn()
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        welcomeVC.welcomeNameLabel.text = ("Welcome,\(nameTextLogin.text ?? "")!")
   
    }
    
    
       @IBAction func resulrButtonLogIn() {
           guard nameTextLogin.text != "Tatsiana" && passwordText.text != "Pauliukova" else {
               showAlert(title: "Invalid login or password", message:  "Please, enter correct login and password")
               return
           }
            }
   
  
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        super.touchesBegan(touches, with: event)
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

