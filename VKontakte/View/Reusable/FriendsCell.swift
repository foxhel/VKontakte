//
//  FriendsCell.swift
//  VKontakte
//
//  Created by Elena Kostenko on 11/04/2021.
//

import UIKit


@IBDesignable class UserAvatar: UIView {
    
    var logoView = UIImageView()
    let shadowView = UIView()
    
    @IBInspectable var shadowRadius: CGFloat = 25.0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowBlur: CGFloat = 6.0 {
        didSet {
            setNeedsDisplay()
        }
    }


    @IBInspectable var shadowOpacity: Float = 0.3 {
        didSet {
            setNeedsDisplay()
        }
    }

    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 5) {
        didSet {
            setNeedsDisplay()
        }
    }

    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet {
            setNeedsDisplay()
        }
    }

    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        logoView.frame = rect
        logoView.layer.cornerRadius =  shadowRadius
        logoView.clipsToBounds = true
        logoView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)

        shadowView.frame = rect
        shadowView.clipsToBounds = false
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOpacity = shadowOpacity
        shadowView.layer.shadowOffset = shadowOffset
        shadowView.layer.shadowRadius = shadowBlur
        shadowView.layer.shadowPath = UIBezierPath(
            roundedRect: shadowView.bounds,
            cornerRadius: shadowRadius).cgPath
        
        shadowView.addSubview(logoView)
        self.addSubview(shadowView)
    }
    
}

class FriendsCell: UITableViewCell {

    //@IBOutlet weak var photoFriend: UIImageView!
    //@IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var avatar: UserAvatar!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
