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
            let actionSheet = UIAlertController(
                title: nil,
                message: nil,
                preferredStyle: .actionSheet)
            let camera = UIAlertAction(title: "Камера", style: .default) { _ in
                self.chooseImagePiker(source: .camera)
            }
            
            let photo = UIAlertAction(title: "Фото", style: .default) { _ in
                self.chooseImagePiker(source: .photoLibrary)
            }
            
            let cancel = UIAlertAction(title: "Отмена", style: .cancel)
            
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
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

// MARK: work with image
extension NewPlaceVC {
    func chooseImagePiker(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePiker = UIImagePickerController()
            imagePiker.allowsEditing = true
            imagePiker.sourceType = source
            present(imagePiker, animated: true)
        }
    }
}
