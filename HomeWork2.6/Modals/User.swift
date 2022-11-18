//
//  User.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 18.11.22.
//

struct User {
    let login: String
    let password: String
    let people: People
}
  

struct People {
    let name: String
    let lastName: String
    let age: Int
    let hobby: String
    let maritalStatus: String
    let presenceOfChildren: String
}


extension User {
    
    static func getUser() -> User {
        User(login: "Tatsiana",
             password: "Tanya",
             people: People(
                name: "Татьяна",
                lastName: "Павлюкова",
                age: 28,
                hobby: "Swift",
                maritalStatus: "Замужем",
                presenceOfChildren: "одна дочь, 6 лет"
             )
        )
    }
}
