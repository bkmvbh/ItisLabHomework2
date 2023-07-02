//
//  PhoneNumbersTableViewController.swift
//  RegistrationApplication
//
//  Created by Ильмир Шарафутдинов on 01/07/2023.
//  Copyright © 2023 Ильмир Шарафутдинов. All rights reserved.
//

import UIKit

class PhoneNumbersTableViewController: UITableViewController {
    
    var phoneNumbersArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(PhoneNumberTableViewCell.self, forCellReuseIdentifier: "celll")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return phoneNumbersArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celll")
        //cell?.detailTextLabel?.text = phoneNumbersArray[indexPath.row]
        cell?.textLabel?.text = phoneNumbersArray[indexPath.row]
        return cell ?? UITableViewCell()
    }
}
