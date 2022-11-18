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
    
    private let login = "1"
    private let password = "1"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.name = login
    }
    
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    @IBAction func resulrButtonLogIn() {
        guard nameTextLogin.text == login && passwordText.text == password else {
            showAlert(
                title: "Invalid login or password",
                message:  "Please, enter correct login and password"
            )
            return
        }
        performSegue(withIdentifier: "showW", sender: nil)
    }
    
    
    @IBAction func buttonForgoutName() {
        showAlert(title: "Oops!", message: "Your name is \(login)")
    }
    
    
    @IBAction func buttonForgoutPassword() {
        showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTextLogin.text = ""
        passwordText.text = ""
    }
  

   private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordText.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

