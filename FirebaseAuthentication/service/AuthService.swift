//
//  AuthService.swift
//  FirebaseAuthentication
//
//  Created by moniruzzaman on 9/6/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService {
    public static let instant = AuthService()
    private init() {}
    
    public func registerUser(with userModel: UserModel, completion: @escaping (Bool, Error?) -> Void) {
        let username = userModel.username
        let email = userModel.email
        let password = userModel.password
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                completion(false, error)
                return
            }
            
            guard let userResult = result?.user else {
                completion(false, nil)
                return
            }
            
            let fireDb = Firestore.firestore()
            fireDb.collection("users")
                .document(userResult.uid)
                .setData([
                    "username": username,
                    "email": email
                ]) { error in
                    if let error = error {
                        completion(false, error)
                        return
                    }
                    
                    completion(true, nil)
                }
        }
    }
    
    public func signIn(with userModel: UserModel, completion: @escaping (Error?) -> Void) {
        let username = userModel.username
        let email = userModel.email
        let password = userModel.password
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                completion(error)
                return
            } else {
                completion(nil)
            }
        }
    }
}
