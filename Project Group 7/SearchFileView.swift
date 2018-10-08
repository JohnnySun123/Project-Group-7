//
//  SearchFileView.swift
//  Project Group 7
//
//  Created by Johnny Sun on 10/7/18.
//  Copyright © 2018 Johnny Sun. All rights reserved.
//

import UIKit
import CloudKit

class SearchFileView: UITableViewController {
    let Titles = ["Chocolate", "Gummy", "Candy"]
    let Chocolate = ["Milk Chocolate","Dark Chocolate","Caramel Chocolate","White Chocolate","Hershey Cookie & Cream", "M&Ms"]
    let Gummy = ["Sour Gummy Warms", "Peach Gummy Rings","Gummy Bears", "Sour Kids"]
    let Candy = ["Sour Drops", "StarBurst", "Air Heads", "Laffy Taffy", "Warheads", "Skittles","Jolly Ranchers"]
  
    @IBOutlet weak var SearchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CustomCell")
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return Titles[section]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return Titles.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return Chocolate.count
        case 1:
            return Gummy.count
        case 2:
            return Candy.count
        default:
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        switch indexPath.section{
            case 0:
            cell.textLabel?.text=Chocolate[indexPath.row]
            break
        case 1:
            cell.textLabel?.text=Gummy[indexPath.row]
            break
        case 2:
            cell.textLabel?.text=Candy[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    func searchBar(_ searchBar: UISearchBar, textChange searchText: String){
        if searchText.isEmpty{
            
        }
        else{
        }
        //refresh view
    }
    
    
    
}
