//
//  PersonInfoViewController.swift
//  LoginWindow
//
//  Created by Камаль Атавалиев on 16.02.2023.
//

import UIKit

final class PersonInfoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    @IBOutlet var personPhotoView: UIImageView!
    
    var person: Person!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: \(person.name)"
        surnameLabel.text = "Surname: \(person.surname)"
        companyLabel.text = "Company: \(person.company)"
        departmentLabel.text = "Department: \(person.department)"
        positionLabel.text = "Position: \(person.position)"
        personPhotoView.image = UIImage(named: person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? PersonBioViewController else { return }
        bioVC.textbio = person.bio
        
    }

}
