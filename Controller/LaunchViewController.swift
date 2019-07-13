//
//  ViewController.swift
//  Reade
//
//  Created by Vishwa Shankar on 7/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    let createAccountLabel: UILabel = {
        let createLabel = UILabel()
        createLabel.text = "Don't have an account?"
        createLabel.translatesAutoresizingMaskIntoConstraints = false
        return createLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUIElements()
        
        view.addSubview(logoImageView)
        view.addSubview(signUpButton)
        view.addSubview(createAccountLabel)
        setUpLayout()
        
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
    }
    
    private func setUpLayout(){
        
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 220).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        signUpButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 300).isActive = true
        signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 250).isActive = true
        signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    
        createAccountLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 300).isActive = true
        createAccountLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 40).isActive = true
        createAccountLabel.rightAnchor.constraint(equalTo: signUpButton.leftAnchor).isActive = true
        createAccountLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    


}

