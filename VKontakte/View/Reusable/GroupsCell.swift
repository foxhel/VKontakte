//
//  GroupsViewCell.swift
//  VKontakte
//
//  Created by Elena Kostenko on 10/04/2021.
//

import UIKit

class GroupsCell: UITableViewCell {
    
    @IBOutlet weak var pictureGroups: UIImageView!
    @IBOutlet weak var nameGroups: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
