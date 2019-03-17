//
//  StartViewController.swift
//  PSUAttEnd
//
//  Created by Ethan Graper on 3/17/19.
//  Copyright © 2019 BombSquad. All rights reserved.
//

import UIKit
import Firebase

class  StartViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do additional setup after loading view
    }
    @IBAction func signIn(_ sender: Any) {
        self.performSegue(withIdentifier: "startToSignin", sender: self)
    }
    @IBAction func signUp(_ sender: Any) {
        self.performSegue(withIdentifier: "startToSignup", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of and recources that can be recreated
    }
}
