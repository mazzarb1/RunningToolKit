//
//  MainMenu.swift
//  RunningToolkit
//
//  Created by Brandon Mazzarella on 1/7/17.
//  Copyright © 2017 Brandon Mazzarella. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKCoreKit

class MainMenu: UIViewController {
    
    
    //FIND RUNNERS BUTTON
    @IBAction func FindRunnersButton(_ sender: Any) {
        //Reference to the mainStoryboard
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //Get instance of the ViewController(Find Runners)
        let FindRunnersController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "FindRunners")
        
        self.present(FindRunnersController, animated: true, completion: nil)
    }
    @IBAction func FindTrailsButton(_ sender: Any) {
        //Reference to the mainStoryboard
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //Get instance of the ViewController(Find Trails)
        let FindTrailsController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "FindTrails")
        
        self.present(FindTrailsController, animated: true, completion: nil)
    }
    
    //CALCULATOR BUTTON
    @IBAction func CalculatorButton(_ sender: Any) {
        //Reference to the mainStoryboard
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //Get instance of the ViewController(Calculator)
        let CalculatorController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "Calculator")
        
        self.present(CalculatorController, animated: true, completion: nil)
    }
    
    
    
    @IBAction func LogOutButton(_ sender: UIButton){
        
        //Will log the user out of FIREBASE
        let firebaseAuth = FIRAuth.auth()
        do {
            try firebaseAuth?.signOut()
            //Error Handling
            //MAKE SURE TOO LOOK UP ALL THE POSSIBLE ERRORS AND HANDLE THEM
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        //This will set the Current FBSDKAccess Token to nil thus logging the user out of Facebook.
        
        FBSDKAccessToken.setCurrent(nil)
        
        //Reference to the mainStoryboard
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //Get instance of the ViewController(Log In Page)
        let ViewController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "LogIn")
        
        self.present(ViewController, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
