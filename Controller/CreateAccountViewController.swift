//
//  CreateAccountViewController.swift
//  Reade
//
//  Created by Vishwa Shankar on 7/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    
    
    @IBOutlet var closeButton: UIButton!
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSignUpUI()
        view.addSubview(closeButton)
        // Do any additional setup after loading the view.
    }
    
    private func setupSignUpUI(){
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        closeButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 250).isActive = true
        closeButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        closeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
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
