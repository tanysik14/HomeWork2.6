//
//  UserViewControler.swift
//  HomeWork2.6
//
//  Created by Tatsiana Pauliukova on 18.11.22.
//

import UIKit

class UserViewControler: UIViewController {
    
    
    @IBOutlet var labelName: UILabel!
    @IBOutlet var textEssay: UILabel!
    
    private let name = User.getUser().people.name
    private let lastName = User.getUser().people.lastName
    private let age = User.getUser().people.age
    private let hobby = User.getUser().people.hobby
    private let maritalStatus = User.getUser().people.maritalStatus
    private let presenceOfChildren = User.getUser().people.presenceOfChildren
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = User.getUser().people.name
        textEssay.text = "Мое имя \(name), моя фамилия \(lastName), мне \(age) лет, мое хобби \(hobby). Мое семейное положение \(maritalStatus), у меня есть \(presenceOfChildren). Мои фото можете посмотреть нажав кнопку ниже))"
    }
    
}

