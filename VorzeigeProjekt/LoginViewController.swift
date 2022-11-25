//
//  ViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 24.11.22.
//

import UIKit


class LoginViewController: UIViewController {

    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var userTF: UITextField!
    
    let user: String = "Jacky"
    let password: String = "1981"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func loginBTN(_ sender: UIButton) {
        if userTF.text == user && passwordTF.text == password {
            performSegue(withIdentifier: "show_second", sender: self)
        }else if userTF.text == user{
            userTF.text = ""
            passwordTF.text = "The password was false"
        }else if passwordTF.text == password{
            userTF.text = "The username was false"
            passwordTF.text = ""
        }
    }
    }
    


