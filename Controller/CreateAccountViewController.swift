//
//  CreateAccountViewController.swift
//  Reade
//
//  Created by Vishwa Shankar on 7/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var passwordLabel: UILabel!
    
    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var closeButton: UIButton!
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    @IBAction func signUpAction(_ sender: Any) {
    
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in
            if error != nil{
                print(error!)
            }
            else{
                
                self.dismiss(animated: true, completion: nil)
            }
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSignUpUI()
        view.addSubview(closeButton)
        setupSignUpLayout()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    private func setupSignUpUI(){
        closeButton.frame = CGRect(x: 20, y: 20, width: 2, height: 20)
        closeButton.setTitle("Close", for: .normal)
        
    }

    
    private func setupSignUpLayout(){
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        closeButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 200).isActive = true
        closeButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        closeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        closeButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func hideKeyboard(){
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    //UItextfieldDelegate methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
