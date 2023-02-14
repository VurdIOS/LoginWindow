//
//  SecondViewController.swift
//  LoginWindow
//
//  Created by Камаль Атавалиев on 13.02.2023.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!

    var welcomeUsersName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeUsersName ?? "")"
        
    }
}
