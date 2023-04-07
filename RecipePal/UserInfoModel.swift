//
//  UserInfoModel.swift
//  RecipePal
//
//  Created by Daryl Aranha on 2023-04-07.
//

import Foundation

class UserInfoModel {
    
    func saveUserInfo(userName: String, emailAddress: String, password: String) {
        
        UserDefaults.standard.set(userName, forKey: Constants.USER_NAME + emailAddress)
        
        UserDefaults.standard.set(password, forKey: Constants.USER_PASSWORD + emailAddress)
        
        print("User info stored")
    }
    
    func fetchUserInfo(emailAddress: String) -> UserInfo {
        let name = UserDefaults.standard.string(forKey: Constants.USER_NAME + emailAddress)
        let password = UserDefaults.standard.string(forKey: Constants.USER_PASSWORD + emailAddress)
        
        return UserInfo(name: name!, password: password!)
    }
    
    func getCurrentSignedUser () -> String {
        return UserDefaults.standard.string(forKey: Constants.CURRENT_SIGNED_USER)!
    }
    
    func setCurrentSignedUser (emailAddress: String) {
        UserDefaults.standard.set(emailAddress, forKey: Constants.CURRENT_SIGNED_USER)
    }
    
}

struct Constants {
    static let USER_NAME = "name"
    static let USER_PASSWORD = "password"
    static let CURRENT_SIGNED_USER = "currentSigned"
}

struct UserInfo {
    var name: String
    var password: String
}
