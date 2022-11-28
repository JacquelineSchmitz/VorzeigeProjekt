//
//  RegisterViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 28.11.22.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func registerPressed(){
        performSegue(withIdentifier: "registerToTabViewSegue", sender: self)

    }

   
}
