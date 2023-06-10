//
//  AlertManager.swift
//  FirebaseAuthentication
//
//  Created by Rz Rasel on 9/6/23.
//

import Foundation
import UIKit

class AlertManager {
    private static func showBasicAlert(on vc: UIViewController, title: String, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.parent(alert, animated: true)
        }
    }
}

extension AlertManager {
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Email", message: "Please enter a valid email")
    }

    public static func showInvalidPasswordAlet(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Password", message: "Please enter a valid password")
    }

    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Username", message: "Please enter a valid username")
    }
}

extension AlertManager {
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Registration", message: nil)
    }

    public static func showRegistrationErrorAlet(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Unknown Registraion Error", message: "\(error.localizedDescription)")
    }
}

extension AlertManager {
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Sign In Error", message: nil)
    }

    public static func showSignInErrorAlet(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Unknown Sign In Error", message: "\(error.localizedDescription)")
    }
}
