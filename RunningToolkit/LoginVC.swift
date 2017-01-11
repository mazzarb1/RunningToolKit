//
//  ViewController.swift
//  RunningToolkit
//
//  Created by Brandon Mazzarella on 1/6/17.
//  Copyright © 2017 Brandon Mazzarella. All rights reserved.
//

import UIKit
import FBSDKLoginKit


class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 500, width: view.frame.width - 32, height: 50)
    
    }
    

}
















