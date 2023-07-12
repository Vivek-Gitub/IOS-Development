//
//  ViewController.swift
//  preEvaluation-task
//
//  Created by Vivek Patel on 03/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var imageLogin: UIImageView!
    
    @IBOutlet weak var checkBoxButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTestField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.imageLogin.layer.borderWidth = 0.2
        self.imageLogin.layer.borderColor = UIColor.black.cgColor
        self.logInButton.layer.cornerRadius = 8
        
        self.checkBoxButton.layer.cornerRadius = 3
        self.checkBoxButton.layer.borderWidth = 1
        self.checkBoxButton.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func changeStateCheckBox(_ sender: Any) {
        
        self.checkBoxButton.isSelected = !self.checkBoxButton.isSelected
        self.checkBoxButton.setImage(self.checkBoxButton.isSelected ? UIImage(named: "Rectangle 5 (1)") : UIImage(named: "icons8-check-box-24"), for: .normal)
    }
    
    
    @IBAction func logInBtn(_ sender: Any) {
        
        
        
        if( emailTextField.text == "123@gmail.com" && passwordTestField.text == "123"){
            print("Welcom")
        }else if(emailTextField.text?.isEmail)!{
         print("Your email is Valid")
        }else if (emailTextField.text!.isEmpty || ((passwordTestField.text?.isEmpty) != nil)){
            print("password Cannot be empty")
        }else{
            print("Wrong Credentials")
        }
    }
    
    @IBAction func forgetPasswordBtn(_ sender: Any) {
        print("Moved to Forget Password View Controller")
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        print("we3lcome to sign In View Controller")
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

extension String {
    var isEmail: Bool{
        let emailRewgEx = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z._%+-]+\\.[A-Za-z]{2,20}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRewgEx)
        return emailTest.evaluate(with: self)
    }
}

