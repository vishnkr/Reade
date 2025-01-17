//
//  ViewController.swift
//  Reade
//
//  Created by Vishwa Shankar on 7/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit
import SVProgressHUD
import Firebase


class LaunchViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet var emailEntryField: UITextField!
    @IBOutlet var passwordEntryField: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    
    @IBOutlet var forgotPassword: UILabel!
    @IBOutlet var createAccountLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUIElements()
        
        view.addSubview(logoImageView)
        view.addSubview(signUpButton)
        view.addSubview(createAccountLabel)
        view.addSubview(emailEntryField)
        view.addSubview(passwordEntryField)
        view.addSubview(signUpButton)
        view.addSubview(forgotPassword)
        
        setUpLayout()
        
        emailEntryField.delegate = self
        passwordEntryField.delegate = self
        
    }
    
    @IBAction func signUpAction(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
    @objc func buttonClicked(sender:UIButton!){
        print("clicked")
        //let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateAccountViewController") as! CreateAccountViewController
        //self.present(vc, animated: true, completion: nil)
        //self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    private func setupUIElements(){
        let logoImage = UIImage(named: "logo")
        logoImageView.image = logoImage
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        signUpButton.frame = CGRect(x: 20, y: 20, width: 2, height: 20)
        signUpButton.setTitle("Sign Up.", for: .normal)
        signUpButton.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        emailEntryField.placeholder = "Email"
        emailEntryField.translatesAutoresizingMaskIntoConstraints = false
        
        
        passwordEntryField.placeholder = "Password"
        passwordEntryField.translatesAutoresizingMaskIntoConstraints = false
        
        logInButton.setTitle("Log In", for: .normal)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        
        //logoImageContainerView.backgroundColor = .blue
        //logoImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        createAccountLabel.text = "Don't have an account?"
        createAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        testVCButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    private func setUpLayout(){
        
       /*
        logoImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        logoImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        logoImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        logoImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        */
        //logoImageContainerView.addSubview(logoImageView)
        
        
        
        //enable auto-layout
        
        
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        emailEntryField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20).isActive = true
        emailEntryField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        emailEntryField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        passwordEntryField.topAnchor.constraint(equalTo: emailEntryField.bottomAnchor, constant: 20).isActive = true
        passwordEntryField.leftAnchor.constraint(equalTo: emailEntryField.leftAnchor).isActive = true
        passwordEntryField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        logInButton.topAnchor.constraint(equalTo: passwordEntryField.bottomAnchor, constant: 15).isActive = true
        logInButton.leftAnchor.constraint(equalTo: passwordEntryField.leftAnchor).isActive = true
        logInButton.rightAnchor.constraint(equalTo: passwordEntryField.rightAnchor).isActive = true
        logInButton.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        
        forgotPassword.leftAnchor.constraint(equalTo: logoImageView.centerXAnchor).isActive = true
        forgotPassword.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 15).isActive = true
        
        createAccountLabel.leftAnchor.constraint(equalTo: passwordEntryField.leftAnchor).isActive = true
        createAccountLabel.rightAnchor.constraint(equalTo: forgotPassword.leftAnchor, constant: 40).isActive = true
        createAccountLabel.topAnchor.constraint(equalTo: testVCButton.bottomAnchor, constant: 50).isActive = true
        
        signUpButton.leftAnchor.constraint(equalTo: createAccountLabel.rightAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: createAccountLabel.topAnchor).isActive = true
    
        testVCButton.leftAnchor.constraint(equalTo: logInButton.leftAnchor).isActive = true
        testVCButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 30).isActive = true
        
        
        
        
    }
    

    @IBAction func logInPressed(_ sender: AnyObject
        ) {
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailEntryField.text!, password: passwordEntryField.text!) { (user, error) in
            
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                
            } else {
                print("Log in successful!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToPreferences", sender: self)
            }
                
        }
    }
    
    func hideKeyboard(){
        emailEntryField.resignFirstResponder()
        passwordEntryField.resignFirstResponder()
    }
    //UItextfieldDelegate methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
    
    
    
    
    
    
    //Test viewcontrollers that are not ready
    

    @IBOutlet var testVCButton: UIButton!
    @IBAction func testVC(_ sender: Any) {
        //self.performSegue(withIdentifier: "gotoHomeScreen", sender: self)
        print("done")
    }
}

