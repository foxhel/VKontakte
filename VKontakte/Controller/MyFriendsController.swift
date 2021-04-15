//
//  TableViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 07/04/2021.
//

import UIKit

class MyFriendsController: UITableViewController {
    
    private func loadFriends() {
        let photo1 = UIImage(named: "photo_2")!
        let photo2 = UIImage(named: "photo2")!
        let photo3 = UIImage(named: "photo3")!
        let photo4 = UIImage(named: "photo4")!
        
        let friend1 = friendModel(name: "Вася Иванов", photo: photo1)
        let friend2 = friendModel(name: "Артем Попов", photo: photo2)
        let friend3 = friendModel(name: "Юля Иванова", photo: photo3)
        let friend4 = friendModel(name: "Ольга Попова", photo: photo4)
        friends += [friend1, friend2, friend3, friend4]
    }
    
    var friends = [friendModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.register(FriendsCell.self, forCellReuseIdentifier: "FriendsCell")
        self.tableView.rowHeight = 80.0
        loadFriends()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as! FriendsCell
        let currentFriend = friends[indexPath.row]
        //cell.nameFriend.text = currentFriend.Name
        cell.avatar.logoView.image = currentFriend.Photo
        cell.textLabel?.text = currentFriend.Name
        //cell.imageView?.image = currentFriend.Photo
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showPhoto", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "showPhoto",
            let destination = segue.destination as? PhotoFriendsController,
            let index = tableView.indexPathForSelectedRow?.row
        else {
            return
        }
        destination.photos = [friends[index].Photo]
    }
}
