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

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
