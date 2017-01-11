//
//  FindTrails.swift
//  RunningToolkit
//
//  Created by Brandon Mazzarella on 1/11/17.
//  Copyright © 2017 Brandon Mazzarella. All rights reserved.
//

import UIKit

class FindTrails: UIViewController {
   
    @IBAction func BackButton(_ sender: Any) {
        //Reference to the mainStoryboard
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let MainMenuController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainMenu")
        
        self.present(MainMenuController, animated: true, completion: nil)

        
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
