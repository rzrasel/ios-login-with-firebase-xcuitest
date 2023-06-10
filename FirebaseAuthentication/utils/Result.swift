//
//  Result.swift
//  FirebaseAuthentication
//
//  Created by Rz Rasel on 9/6/23.
//

import Foundation

enum Result<T, Error> {
    case success(T)
    case failure(Error)
}
