//
//  ViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 04/04/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var usernameTexfield: UITextField!
    @IBOutlet weak var passwordTexfield: UITextField!
    
    @IBOutlet weak var enterButton: UIButton!
    
    @IBAction func EnterButtonPressed(_ sender: UIButton) {
        if  usernameTexfield.text == "admin",
            passwordTexfield.text == "12345" {
            print("Auth success")
                
            } else {
                print("Auth failed")
            }

    }
    

    
    
}

