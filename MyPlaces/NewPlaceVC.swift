//
//  NewPlaceVC.swift
//  MyPlaces
//
//  Created by cherepanov92 on 26.10.2022.
//

import UIKit

class NewPlaceVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }
    
    // MARK: Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}

// MARK: Text field delegate

extension NewPlaceVC: UITextFieldDelegate {
    // Скрываю клавиатуру по нажатию на Done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
