//
//  LoginViewController.swift
//  PSUAttEnd
//
//  Created by Ethan Graper on 3/17/19.
//  Copyright © 2019 BombSquad. All rights reserved.
//

import UIKit
import Firebase
class  LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do additional setup after loading view
    }

    @IBOutlet weak var loginEmailText: UITextField!
    @IBOutlet weak var loginPasswordText: UITextField!
    @IBAction func loginButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: loginEmailText.text!, password: loginPasswordText.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of and recources that can be recreated
    }
}
