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
    
    let terminField = UITextField()
    
    let dateTimePicker = UIDatePicker()
    
    let datePicker = UIDatePicker()
    let timePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        createTimePicker()
        
    }
    func createDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        datumTF.inputView = datePicker
        datumTF.inputAccessoryView = createDateToolbar()
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
    func createDateTimeToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil,  action: #selector(datetimePressed))
        toolbar.setItems([doneButton], animated: true)
        
        return toolbar
    }
    
    
    @objc func datePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        datumTF.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func timePressed() {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"
        uhrzeitTF.text = timeFormatter.string(from: timePicker.date)
        self.view.endEditing(true)
    }
    @objc func datetimePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        datumTF.text = dateFormatter.string(from: dateTimePicker.date)
        dateFormatter.dateFormat = "HH:mm"
        uhrzeitTF.text = dateFormatter.string(from: timePicker.date)
        terminField.removeFromSuperview()
        self.view.endEditing(true)
        
    }
            
        
    @IBAction func terminBTN(_ sender:UIButton) {
                dateTimePicker.preferredDatePickerStyle = .wheels
                dateTimePicker.locale = Locale(identifier: "de")
                terminField.isHidden = true
                terminField.inputView = dateTimePicker
                terminField.inputAccessoryView = createDateTimeToolbar()
                view.addSubview(terminField)
                terminField.becomeFirstResponder()
        }
        
        
        
        
    }
    

