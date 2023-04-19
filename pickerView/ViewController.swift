//
//  ViewController.swift
//  pickerView
//
//  Created by R93 on 30/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
  
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var LOGIN: UIButton!
    @IBOutlet weak var PickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTApped(_ sender: UIButton) {
        if email.text == "" {
            displayValidation(massage: "enter valid email")
        } else if gender.text == "" {
            displayValidation(massage: "enter valid gender")
        }
    }
    private func displayValidation(massage: String) {
        let alert: UIAlertController = UIAlertController(title: "Error", message: massage, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "OK", style: .default) { button in }
        let cancelButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .destructive)
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
    }
    
}

