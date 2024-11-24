//
//  MainVC.swift
//  MyPlaces
//
//  Created by cherepanov92 on 25.10.2022.
//

import UIKit

class MainVC: UITableViewController {

    let restaurantNames = [
        "Bar Зая", "Bonsai", "Япона Мама",
        "Паштет", "Вилка-ложка", "Гротт-бар",
        "dodo pizza", "pizza mia", "Вьетмон",
        "Сеул", "Золотой лотос"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
                
        cell.imageOfPlace?.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.width / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        cell.nameLabel?.text = restaurantNames[indexPath.row]

        return cell
    }
    
    // MARK: - Table view deligate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
