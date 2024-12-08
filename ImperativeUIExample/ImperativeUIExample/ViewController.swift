//
//  ViewController.swift
//  ImperativeUIExample
//
//  Created by Abhishek Gupta on 14/01/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textUserName: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        debugPrint("btnLogin Tapped")
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if ((textField.text?.count)! >= 4) {
            btnLogin.isEnabled = true
        } else {
            btnLogin.isEnabled = false
        }
    }

}

