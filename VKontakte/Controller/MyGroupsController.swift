//
//  MyGroupsViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 09/04/2021.
//

import UIKit

class MyGroupsController: UITableViewController {
    
    //var groups = [String()]
    var groups = [groupsModel]()

    @IBAction func addGroup(segue: UIStoryboardSegue) {
       guard
            segue.identifier == "AddGroup",
            let allGroupsController = segue.source as? AllGroupsController,
            let indexPath = allGroupsController.tableView.indexPathForSelectedRow
       else { return }
        let group = allGroupsController.groups[indexPath.row]
        var exists = false
        for g in groups {
            if g.Name == group.Name {
                exists = true
                break
            }
        }
        if !exists {
            groups.append(group)
            tableView.reloadData()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(GroupsCell.self, forCellReuseIdentifier: "GroupsCell")

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath)

        let currentGroup = groups[indexPath.row]
        cell.textLabel?.text = currentGroup.Name
        cell.imageView?.image = currentGroup.Logo
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}
