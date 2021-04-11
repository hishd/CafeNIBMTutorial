//
//  ProfileViewController.swift
//  CafeNIBMNew
//
//  Created by Hishara Dilshan on 2021-04-12.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let sessionMGR = SessionManager()
    
    @IBOutlet weak var txtUsername: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    @IBOutlet weak var txtPhone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = sessionMGR.getUserData()
        txtUsername.text = user.userName
        txtEmail.text = user.userEmail
        txtPhone.text = user.userPhone
    }
    
    
    @IBAction func onSignOutPressed(_ sender: UIButton) {
        sessionMGR.clearUserLoggedState()
    }
    
}
