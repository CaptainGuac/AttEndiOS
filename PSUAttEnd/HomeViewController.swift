//
//  HomeViewController.swift
//  PSUAttEnd
//
//  Created by Ethan Graper on 3/17/19.
//  Copyright © 2019 BombSquad. All rights reserved.
//

import UIKit

class  HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do additional setup after loading view
    }
    
    @IBAction func RestartButton(_ sender: Any) {
        self.performSegue(withIdentifier: "Restart", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of and recources that can be recreated
    }
}
