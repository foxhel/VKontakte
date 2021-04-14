//
//  GroupsViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 09/04/2021.
//

import UIKit

class AllGroupsController: UITableViewController {
    private func loadGroups() {
        let photo1 = UIImage(named: "group1")!
        let photo2 = UIImage(named: "group2")!
        let photo3 = UIImage(named: "group3")!
        let photo4 = UIImage(named: "group4")!
        
        let group1 = groupsModel(name: "Music", logo: photo1)
        let group2 = groupsModel(name: "Politics", logo: photo2)
        let group3 = groupsModel(name: "Sport", logo: photo3)
        let group4 = groupsModel(name: "Live", logo: photo4)
        groups += [group1, group2, group3, group4]
    }
    
    var groups = [groupsModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGroups()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
       
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath)

        cell.textLabel?.text = groups[indexPath.row].Name
        cell.imageView?.image = groups[indexPath.row].Logo

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
