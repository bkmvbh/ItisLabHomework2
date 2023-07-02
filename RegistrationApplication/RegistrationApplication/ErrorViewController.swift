//
//  ErrorViewController.swift
//  RegistrationApplication
//
//  Created by Ильмир Шарафутдинов on 02/07/2023.
//  Copyright © 2023 Ильмир Шарафутдинов. All rights reserved.
//

import UIKit

class ErrorViewController: UIViewController {
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var baton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baton.layer.cornerRadius = baton.frame.height / 2
        
    }

    @IBAction func errorButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
