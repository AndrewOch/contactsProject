//
//  Contact.swift
//  ContantsProject
//
//  Created by itisioslab on 02.07.2021.
//

import UIKit

class ContactMember: NSObject {
    
    var firstName:String = ""
    var secondName:String = ""
    var workPlace:String = ""
    var phoneNumber:String = ""
    var comment:String = ""
    
    init(_ firstName:String, _ secondName:String, _ workPlace:String, _ phoneNumber:String, _ comment:String) {
        self.firstName = firstName
        self.secondName = secondName
        self.workPlace = workPlace
        self.phoneNumber = phoneNumber
        self.comment = comment
    }
}
