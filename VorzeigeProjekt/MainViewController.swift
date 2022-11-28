//
//  MainViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 28.11.22.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginPressed(){
        performSegue(withIdentifier: "startToTabViewSegue", sender: self)
    }
    
    @IBAction func registerPressed(){
        performSegue(withIdentifier: "startToRegisterSegue", sender: self)
    }
    

}
