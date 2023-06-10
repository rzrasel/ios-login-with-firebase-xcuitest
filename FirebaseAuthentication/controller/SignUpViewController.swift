//
//  SignUpViewController.swift
//  FirebaseAuthentication
//
//  Created by Rz Rasel on 9/6/23.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var email: UITextField?
    @IBOutlet weak var password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onTapSignUp(_ sender: UIButton) {
        let userModel: UserModel = UserModel(
            username: username.text ?? "",
            email: email?.text ?? "",
            password: password.text ?? ""
        )

        if !Validator.isValidUsername(for: userModel.username as? String) {
            AlertManager.showInvalidUsernameAlert(on: self)
            return
        }

        if !Validator.isValidEmail(for: userModel.email) {
            AlertManager.showInvalidEmailAlert(on: self)
            return
        }

        if !Validator.isPasswordValid(for: userModel.password) {
            AlertManager.showInvalidPasswordAlet(on: self)
            return
        }

        AuthService.instant.registerUser(with: userModel) { [weak self] (wasRegistered, error)  in
            guard let self = self else {
                return
            }

            if let error = error {
                AlertManager.showRegistrationErrorAlet(on: self, with: error)
                return
            }

            if wasRegistered {
                AlertManager.showRegistrationErrorAlert(on: self)
                return
            }

            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let dashboardController = storyBoard.instantiateViewController(withIdentifier: "dashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashboardController, animated: true)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
