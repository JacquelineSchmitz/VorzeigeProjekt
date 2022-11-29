//
//  MainViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 28.11.22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var isValidLogin = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loginBTN.isEnabled = false
        usernameTF.delegate = self
        passwordTF.delegate = self
        
//        NotificationCenter.default.addObserver(self, selector: #selector(login(_ :)), name: NSNotification.Name.init("de.ViewsWechseln.logIn"), object: nil)
    }
    
    @IBAction func loginPressed(){
        if(isValidLogin){
              performSegue(withIdentifier: "startToTabViewSegue", sender: self)
            } else {
              let alert = UIAlertController(title: "LogIn failed", message: "Please try again", preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "try again", style: .cancel, handler: {_ in
                self.usernameTF.text = ""
                self.passwordTF.text = ""
                self.loginBTN.isEnabled = false
                alert.dismiss(animated: true)
              }))
              present (alert, animated: true)
            }
    }
    
    @IBAction func registerPressed(){
        performSegue(withIdentifier: "startToRegisterSegue", sender: self)
    }
    

}
extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    @IBAction func onTextChanged(){
        if(usernameTF.text?.count ?? 0 > 0 && passwordTF.text?.count ?? 0 > 0){
              loginBTN.isEnabled = true
              if(usernameTF.text == "Jacky" && passwordTF.text == "1234"){
                isValidLogin = true
              } else {
                isValidLogin = false
              }
            }
    }
}
