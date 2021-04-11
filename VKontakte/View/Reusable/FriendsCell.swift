//
//  FriendsCell.swift
//  VKontakte
//
//  Created by Elena Kostenko on 11/04/2021.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var photoFriend: UIImageView!
    @IBOutlet weak var nameFriend: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
