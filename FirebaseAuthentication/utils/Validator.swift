//
//  Validator.swift
//  FirebaseAuthentication
//
//  Created by Rz Rasel on 9/6/23.
//

import Foundation

class Validator {
    static func isValidEmail(for email: String) -> Bool {
        let email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.{1}[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "SELF MATCHS %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }

    static func isValidUsername(for username: String?) -> Bool {
        let username = username?.trimmingCharacters(in: .whitespacesAndNewlines)
        let usernameRegEx = "\\w{4,24}"
        let usernamePred = NSPredicate(format: "SELF MATCHS %@", usernameRegEx)
        return usernamePred.evaluate(with: username)
    }

    static func isPasswordValid(for password: String) -> Bool {
        let password = password.trimmingCharacters(in: .whitespacesAndNewlines)
        let passwordRegEx = "^(?=.*[a-z)(?=.*[A-Z])(?=.*[0-9])(?=.*[$@$#!%*?&]).{6,32}$"
        let passwordPred = NSPredicate(format: "SELF MATCHS %@", passwordRegEx)
        return passwordPred.evaluate(with: password)
    }
}
