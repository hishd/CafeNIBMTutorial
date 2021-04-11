//
//  SessionManager.swift
//  CafeNIBMNew
//
//  Created by Hishara Dilshan on 2021-04-10.
//

import Foundation

class SessionManager {
    
    //Write Value to UserDefaults
    //UserDefaults.standard.set([VALUE TO BE STORED], forKey: [THE KEY WHICH THE VALUE WILL BE STORED])
    
    //Read value from UserDefaults
    //UserDefaults.standard.bool(forKey: [THE KEY WHICH THE VALUE WILL BE STORED])
    //UserDefaults.standard.string(forKey: [THE KEY WHICH THE VALUE WILL BE STORED])
    //UserDefaults.standard.float(forKey: [THE KEY WHICH THE VALUE WILL BE STORED])
    
    func getLoggedState() -> Bool {
        return UserDefaults.standard.bool(forKey: "USER_LOGGED")
    }

    func saveUserLogin(user: User) {
        UserDefaults.standard.setValue(true, forKey: "USER_LOGGED")
        UserDefaults.standard.setValue(user.userName, forKey: "USER_NAME")
        UserDefaults.standard.setValue(user.userEmail, forKey: "USER_EMAIL")
        UserDefaults.standard.setValue(user.userPhone, forKey: "USER_PHONE")
    }
    
    func getUserData() -> User {
        let user = User(
            userName: UserDefaults.standard.string(forKey: "USER_NAME") ?? "",
            userEmail: UserDefaults.standard.string(forKey: "USER_EMAIL") ?? "",
            userPassword: "",
            userPhone: UserDefaults.standard.string(forKey: "USER_PHONE") ?? "")
        
        return user
    }
    
    func clearUserLoggedState() {
        UserDefaults.standard.setValue(false, forKey: "USER_LOGGED")
    }
    
}
