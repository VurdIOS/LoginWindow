//
//  PersonModel.swift
//  LoginWindow
//
//  Created by Камаль Атавалиев on 18.02.2023.
//





struct User {
    let login: String
    let password: String
    let person: Person
    
    static func initUser() -> User{
        User(
            login: "Kama",
             password: "1",
            person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let company: Company
    let photo: String
    let bio: String
    
    
    static func getPerson() -> Person {
        Person(
            name: "Kamal",
            surname: "Atavaliev",
            company: Company.getcompany(),
            photo: "1",
            bio: "Notice how the button below the navigation link sets isShowingDetailView to true when triggered – that’s what makes the navigation action happen, rather than the user interacting with anything inside the navigation link itself.Obviously having multiple Booleans to track different possible navigation destinations would be difficult, so SwiftUI gives us an alternative: we can add a tag to each navigation link, then control which one is triggered using a single property. As an example, this will display one of two detail views depending on which buttons was pressed:"
        )
            
    }
}

struct Company {
    let company: String
    let department: String
    let position: String
    
    static func getcompany() -> Company {
        Company(company: "PIK-Industry",
                department: "Constraction",
                position: "Foreman")
    }
}

