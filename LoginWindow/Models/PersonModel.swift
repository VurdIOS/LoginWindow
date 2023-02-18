//
//  PersonModel.swift
//  LoginWindow
//
//  Created by Камаль Атавалиев on 18.02.2023.
//

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let position: String
    let photo: String
    let bio: String
    
    
    static func getPerson() -> Person {
        Person(
            name: "Kamal",
            surname: "Atavaliev",
            company: "PIK-Industry",
            department: "Constraction",
            position: "Foreman",
            photo: "KamalPhoto",
            bio: "Notice how the button below the navigation link sets isShowingDetailView to true when triggered – that’s what makes the navigation action happen, rather than the user interacting with anything inside the navigation link itself.Obviously having multiple Booleans to track different possible navigation destinations would be difficult, so SwiftUI gives us an alternative: we can add a tag to each navigation link, then control which one is triggered using a single property. As an example, this will display one of two detail views depending on which buttons was pressed:")
            
    }
}
