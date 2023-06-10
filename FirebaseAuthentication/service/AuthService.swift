//
//  AuthService.swift
//  FirebaseAuthentication
//
//  Created by Rz Rasel on 9/6/23.
//

import Foundation

class AuthService {
    public static let instant = AuthService()
    private init() {}

    public func registerUser(with userModel: UserModel, completion: @escaping (Bool, Error?) -> Void) {
    }

    public func signIn(with userModel: UserModel, completion: @escaping (Error) -> Void) {
    }
}
