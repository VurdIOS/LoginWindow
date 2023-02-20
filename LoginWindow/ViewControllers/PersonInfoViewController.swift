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
    
    var person: User! 

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personPhotoView.layer.cornerRadius = personPhotoView.frame.width / 2
        
        nameLabel.text = "Name: \(person.person.name)"
        surnameLabel.text = "Surname: \(person.person.surname)"
        companyLabel.text = "Company: \(person.person.company.company)"
        departmentLabel.text = "Department: \(person.person.company.department)"
        positionLabel.text = "Position: \(person.person.company.position)"
        personPhotoView.image = UIImage(named: person.person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? PersonBioViewController else { return }
        bioVC.textbio = person.person.bio
        
    }

}
