//
//  LaunchViewController.swift
//  CafeNIBMNew
//
//  Created by Hishara Dilshan on 2021-04-12.
//

import UIKit

class LaunchViewController: UIViewController {
    
    let sessionMGR = SessionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if sessionMGR.getLoggedState() {
            self.performSegue(withIdentifier: "LaunchToHome", sender: nil)
        } else {
            self.performSegue(withIdentifier: "LaunchToSignIn", sender: nil)
        }
    }

}
