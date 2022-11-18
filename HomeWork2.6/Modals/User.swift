//
//  User.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 18.11.22.
//

struct User {
    let login: String = ""
    let people: People
}
  

struct People {
    let name: String
    let lastName: String
    let age: Int
    let hobby: String
    let maritalStatus: String
    let presenceOfChildren: String
    let myPictures: String
    
//    static let user = User(login: "Tatsiana", people: People(name: "Татьяна", lastName: "Павлюкова", age: 28, hobby: "Swift", maritalStatus: "замужем", presenceOfChildren: "есть, дочь Есения, 6 лет", myPictures: ""))
}




func getUser() -> User {
    User(login: "Tatsiana",
         people: People(
            name: "Tatsiana",
            lastName: "Pauliukova",
            age: 28,
            hobby: "Swift",
            maritalStatus: "Married",
            presenceOfChildren: "Have one daughter",
            myPictures: ""
         )
    )
}

