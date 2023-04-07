//
//  SignUpViewController.swift
//  RecipePal
//
//  Created by Daryl Aranha on 2023-04-07.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var userInfoModel = UserInfoModel()
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func onSignUpButtonPress(_ sender: Any) {
        // get user info from text box
        // check if passwords are propper
        // store the info
        // navigate to next screen
        if (password.text == confirmPassword.text) {
            userInfoModel.saveUserInfo(userName: userName.text!, emailAddress: emailAddress.text!, password: password.text!)
            
            userInfoModel.setCurrentSignedUser(emailAddress: emailAddress.text!)
            performSegue(withIdentifier: "HomeViewFromSignup", sender: self)
        } else {
            password.textColor = UIColor.red
            confirmPassword.textColor = UIColor.red
        }
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
