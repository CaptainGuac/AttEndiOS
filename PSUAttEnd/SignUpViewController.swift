//
//  SingUpViewController.swift
//  PSUAttEnd
//
//  Created by Ethan Graper on 3/17/19.
//  Copyright © 2019 BombSquad. All rights reserved.
//

import UIKit
import Firebase

class  SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do additional setup after loading view
    }
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pswdTextField: UITextField!
    @IBOutlet weak var confirmpswdTextField: UITextField!
    @IBAction func signUpButton(_ sender: Any) {
        if pswdTextField.text != confirmpswdTextField.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: emailTextField.text!, password: pswdTextField.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of and recources that can be recreated
    }
}
