//
//  User.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 22.07.24.
//

import Foundation

struct User: Codable {
    
    var firstname       = ""
    var lastname        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    
    
}
