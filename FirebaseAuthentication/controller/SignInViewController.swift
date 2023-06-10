//
//  SignInViewController.swift
//  FirebaseAuthentication
//
//  Created by moniruzzaman on 9/6/23.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapSignIn(_ sender: UIButton) {
        let userModel: UserModel = UserModel(
            username: "",
            email: email?.text ?? "",
            password: password.text ?? ""
        )
        
        if !Validator.isValidEmail(for: userModel.email) {
            AlertManager.showInvalidEmailAlert(on: self)
            return
        }
        
        if !Validator.isPasswordValid(for: userModel.password) {
            AlertManager.showInvalidPasswordAlet(on: self)
            return
        }
        
        AuthService.instant.signIn(with: userModel) { error in
            if let error = error {
                AlertManager.showSignInErrorAlet(on: self, with: error)
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
