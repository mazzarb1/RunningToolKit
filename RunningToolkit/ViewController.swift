//
//  ViewController.swift
//  RunningToolkit
//
//  Created by Brandon Mazzarella on 1/6/17.
//  Copyright © 2017 Brandon Mazzarella. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FirebaseAuth
import GoogleSignIn


class ViewController: UIViewController,FBSDKLoginButtonDelegate{
    
    let loginButton = FBSDKLoginButton()
    
    
    override func viewDidLoad() { //opens viewDidLoad
        super.viewDidLoad()
      
        
        let loginButton = FBSDKLoginButton()
        loginButton.isHidden = true
        
        //If the user is logged in, the currentUser won't be empty.
        // If a user is logged in we want them to go to the main screen.
        // if FIRAuth.auth()?.currentUser != nil {
        //Opens StateChange
        FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            if let user = user
                
              
            
            { //Opens User
                let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let MainMenu: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainMenu")
                
                self.present(MainMenu, animated: true, completion: nil)
                
                //just to remove the warning
                print("\(user)")
            } // closes User
            else { //opens else
                // This code is checking to see if the user is logged in or not, if they are not it will do the following:
                
                //Allowing the login Button to be visible so the user can log in
                
                self.view.addSubview(loginButton)
                loginButton.frame = CGRect(x: 16, y: 500, width: self.view.frame.width - 32, height: 50)
                loginButton.readPermissions = ["public_profile", "email", "user_friends"]
                loginButton.delegate = self
                loginButton.isHidden = false
                
                
                
                
            } // closes else
            
            
            
        } //closes state change
        
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("User has logged in!")
        let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        
        FIRAuth.auth()?.signIn(with: credential) { (user, error) in
            print("WE MADE IT TO FIREBASE!")
        }
        
        //Safety
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User has logged out...")
        let firebaseAuth = FIRAuth.auth()
        do {
            try firebaseAuth?.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
    }
    
    
}//closes class
















