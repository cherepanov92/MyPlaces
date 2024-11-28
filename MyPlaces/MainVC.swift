//
//  MainVC.swift
//  MyPlaces
//
//  Created by cherepanov92 on 25.10.2022.
//

import UIKit

class MainVC: UITableViewController {
    
    var places = [
        Place(name: "Bar Зая", location: "Екатеринбург", type: "Бар", mockImage: "Bar Зая", image: nil),
        Place(name: "Bonsai", location: "Екатеринбург", type: "Ресторан", mockImage: "Bonsai", image: nil),
        Place(name: "Япона Мама", location: "Екатеринбург", type: "Семейный ресторан", mockImage: "Япона Мама", image: nil),
        Place(name: "Паштет", location: "Екатеринбург", type: "Ресторан", mockImage: "Паштет", image: nil),
        Place(name: "Вилка-ложка", location: "Екатеринбург", type: "Столовая", mockImage: "Вилка-ложка", image: nil),
        Place(name: "Гротт-бар", location: "Екатеринбург", type: "Бар", mockImage: "Гротт-бар", image: nil),
        Place(name: "dodo pizza", location: "Екатеринбург", type: "Ресторан", mockImage: "dodo pizza", image: nil),
        Place(name: "pizza mia", location: "Екатеринбург", type: "Ресторан", mockImage: "pizza mia", image: nil),
        Place(name: "Вьетмон", location: "Екатеринбург", type: "Ресторан", mockImage: "Вьетмон", image: nil),
        Place(name: "Сеул", location: "Екатеринбург", type: "Ресторан", mockImage: "Сеул", image: nil),
        Place(name: "Золотой лотос", location: "Екатеринбург", type: "Столовая", mockImage: "Золотой лотос", image: nil),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        let place = places[indexPath.row]
        
        if place.mockImage != nil {
            cell.imageOfPlace?.image = UIImage(named: place.mockImage!)
        } else {
            cell.imageOfPlace?.image = place.image
        }
        
        
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.width / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        cell.nameLabel?.text = place.name
        
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type

        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let newPlaceVC = segue.source as? NewPlaceVC else { return }
        newPlaceVC.saveNewPlace()
        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }

}
