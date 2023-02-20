//
//  PersonBioViewController.swift
//  LoginWindow
//
//  Created by Камаль Атавалиев on 16.02.2023.
//

import UIKit

final class PersonBioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    var textbio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = textbio
        view.backgroundColor = .systemMint

    }

}
