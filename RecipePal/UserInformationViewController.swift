//
//  UserInformationViewController.swift
//  RecipePal
//
//  Created by Daryl Aranha on 2023-03-24.
//

import UIKit

class UserInformationViewController: UIViewController {

    var userInfoModel = UserInfoModel()
    
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var emailAddress: UILabel!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    var email: String = ""
    var userInfo: UserInfo?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        email = userInfoModel.getCurrentSignedUser()
        
        userInfo = userInfoModel.fetchUserInfo(emailAddress: email)
        
        name.text = userInfo!.name
        emailAddress.text = email
    }
    
    @IBAction func onUpdateButtonPressed(_ sender: Any) {
        
        if (password.text == confirmPassword.text) {
            userInfoModel.saveUserInfo(userName: name.text!, emailAddress: email, password: password.text!)
        } else {
            password.textColor = UIColor.red
            confirmPassword.textColor = UIColor.red
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
