//
//  User.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 18.11.22.
//

struct User {
    let login: String
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

struct Pictures {
    let people: People
    let user: User
    let myPictures: String
}
