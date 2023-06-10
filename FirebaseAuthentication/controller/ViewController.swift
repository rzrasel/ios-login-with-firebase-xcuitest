//
//  ViewController.swift
//  FirebaseAuthentication
//
//  Created by moniruzzaman on 9/6/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapSignIn(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signinController = storyBoard.instantiateViewController(withIdentifier: "signinViewController") as! SignInViewController
        self.navigationController?.pushViewController(signinController, animated: true)
    }
    
    @IBAction func onTapSignUp(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signupController = storyBoard.instantiateViewController(withIdentifier: "signupViewController") as! SignUpViewController
        self.navigationController?.pushViewController(signupController, animated: true)
    }
}

