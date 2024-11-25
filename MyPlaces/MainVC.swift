//
//  MainVC.swift
//  MyPlaces
//
//  Created by cherepanov92 on 25.10.2022.
//

import UIKit

class MainVC: UITableViewController {
    
    let places = [
        Place(name: "Bar Зая", location: "Екатеринбург", type: "Бар", image: "Bar Зая"),
        Place(name: "Bonsai", location: "Екатеринбург", type: "Ресторан", image: "Bonsai"),
        Place(name: "Япона Мама", location: "Екатеринбург", type: "Семейный ресторан", image: "Япона Мама"),
        Place(name: "Паштет", location: "Екатеринбург", type: "Ресторан", image: "Паштет"),
        Place(name: "Вилка-ложка", location: "Екатеринбург", type: "Столовая", image: "Вилка-ложка"),
        Place(name: "Гротт-бар", location: "Екатеринбург", type: "Бар", image: "Гротт-бар"),
        Place(name: "dodo pizza", location: "Екатеринбург", type: "Ресторан", image: "dodo pizza"),
        Place(name: "pizza mia", location: "Екатеринбург", type: "Ресторан", image: "pizza mia"),
        Place(name: "Вьетмон", location: "Екатеринбург", type: "Ресторан", image: "Вьетмон"),
        Place(name: "Сеул", location: "Екатеринбург", type: "Ресторан", image: "Сеул"),
        Place(name: "Золотой лотос", location: "Екатеринбург", type: "Столовая", image: "Золотой лотос")
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
                
        cell.imageOfPlace?.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.width / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        cell.nameLabel?.text = places[indexPath.row].name
        
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type

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
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {
        
    }

}
