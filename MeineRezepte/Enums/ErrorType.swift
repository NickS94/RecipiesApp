//
//  ErrorType.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import Foundation
enum ErrorType: String{
    case emptyUsername = "Es muss ein Benutzername eingegeben werden."
    case incorrectUsername = "Der Benutzername ist nicht korrekt."
    case emptyPassword = "Es muss ein Passwort eingegeben werden."
    case incorrectPassword = "Das Passwort ist nicht korrekt."
    case none
}
