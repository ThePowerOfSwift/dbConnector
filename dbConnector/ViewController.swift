//
//  ViewController.swift
//  dbConnector
//
//  Created by Stanley Chiang on 2/28/15.
//  Copyright (c) 2015 Stanley Chiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "login" {
            let vc: ProfileViewController = segue.destinationViewController as ProfileViewController
            vc.email = emailField.text
        } else if segue.identifier == "newuser" {
            let vc: RegisterViewController = segue.destinationViewController as RegisterViewController
        }
    }

    @IBAction func loginAction(sender: UIButton) {
    }

    @IBAction func newGuyAction(sender: UIButton) {
    }
}

