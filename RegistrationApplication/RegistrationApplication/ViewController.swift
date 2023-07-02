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
    @IBOutlet weak var photoImageView: UIImageView!
    
    let password: String = "123"
    let loginStart: String = "8908"
    var phoneNumbersArray: [String] = []
    @IBAction func checkCoincidences(_ sender: Any) {
        if password == passwordTextField.text && (loginTextField.text!.prefix(4) == loginStart ) {
            phoneNumbersArray.append(loginTextField.text!)
            let viewController = PhoneNumbersTableViewController()
            viewController.phoneNumbersArray = phoneNumbersArray
            navigationController?.pushViewController(viewController, animated: true)
        } else {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "errorvc") as! ErrorViewController 
            self.present(vc, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonView.layer.cornerRadius = buttonView.frame.height / 2
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
}

