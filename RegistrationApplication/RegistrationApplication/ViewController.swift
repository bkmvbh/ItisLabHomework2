//
//  ViewController.swift
//  RegistrationApplication
//
//  Created by Ильмир Шарафутдинов on 01/07/2023.
//  Copyright © 2023 Ильмир Шарафутдинов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let password: String = "126523"
    let loginStart: String = "8908"
    
    @IBAction func checkCoincidences(_ sender: Any) {
        if password == passwordTextField.text && (loginTextField.text!.prefix(4) == loginStart ) {
            let viewController = PhoneNumbersTableViewController()
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonView.layer.cornerRadius = 30
    }
}

