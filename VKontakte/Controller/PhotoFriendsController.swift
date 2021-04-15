//
//  photoFriendsViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 09/04/2021.
//

import UIKit

class PhotoFriendsController: UICollectionViewController {
    
    var photos = [UIImage?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoFriendsCell", for: indexPath) as? PhotoFriendsCell else {
            return UICollectionViewCell()
        }
        cell.photo.image = photos[indexPath.item]
        
        return cell
    }
    
}
