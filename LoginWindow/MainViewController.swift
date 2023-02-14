//
//  ViewController.swift
//  LoginWindow
//
//  Created by Камаль Атавалиев on 13.02.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let userName = "Kama"
    private let userPassword = "Pulya"
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? SecondViewController else { return }
        welcomeVC.welcomeUsersName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

// IBActions...
    @IBAction func logInTapped() {
        checkUsers(userNameTF, userPasswordTF)
    }
    
    @IBAction func forgotUserNameTapped() {
        showAlert(withTitle: "Forgot username?",
                  andMessage: "Your username is Kama")
    }
    @IBAction func forgotPasswordTapped() {
        showAlert(withTitle: "Forgot your password?",
                  andMessage: "Your password is Pulya")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
}
// Extansions...
// Ниже ужас с переносами, не знаю как правильнее расположить...
extension MainViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message,
                                      preferredStyle: .alert)
        let gotItAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordTF.text = ""
        }
        alert.addAction(gotItAction)
        present(alert, animated: true)
    }

    private func checkUsers(_ login: UITextField, _ password: UITextField) {
        if login.text != userName && password.text != userPassword {
            showAlert(withTitle: "Opps!", andMessage: "You wrote wrong login or password")
        }
            
        
    }
}
