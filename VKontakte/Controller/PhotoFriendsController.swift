//
//  photoFriendsViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 09/04/2021.
//

import UIKit

class PhotoFriendsController: UICollectionViewController {
    
    var photos = [PhotoFriendsCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoFriendsCell", for: indexPath) as! PhotoFriendsCell
        let photo1 = UIImage(named: "photo1")!
        cell.photo.image = photo1
        //cell.configurate()
        print(cell)
        return cell
        
        //return UICollectionViewCell()
    }

}
