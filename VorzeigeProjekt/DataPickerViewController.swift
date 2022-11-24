//
//  DataPickerViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 24.11.22.
//

import UIKit

class DataPickerViewController: UIViewController {

    @IBOutlet weak var datumTF: UITextField!
    @IBOutlet weak var uhrzeitTF: UITextField!
    
    //let dataTimePicker = UIDatePicker()
    
    let datePicker = UIDatePicker()
    let timePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTimePicker()
        createTimePicker()

    }
    func createDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        datumTF.inputView = datePicker
    }
    func createTimePicker() {
        timePicker.preferredDatePickerStyle = .wheels
        timePicker.datePickerMode = .time
        timePicker.locale = Locale(identifier: "de")
        uhrzeitTF.inputView = timePicker
        uhrzeitTF.inputAccessoryView = createTimeToolbar()
    }
    
    func createDateToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil,  action: #selector(datePressed))
        toolbar.setItems([doneButton], animated: true)
        
        return toolbar
        
    }
    func createTimeToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil,  action: #selector(timePressed))
        toolbar.setItems([doneButton], animated: true)
        
        return toolbar
    }
    
    @objc func datePressed() {}
    
    @objc func timePressed() {}
    
    
    @IBAction func terminBTN(_ sender: Any) {
    }
    
   
    

}
