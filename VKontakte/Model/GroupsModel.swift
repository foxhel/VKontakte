//
//  File.swift
//  VKontakte
//
//  Created by Elena Kostenko on 10/04/2021.
//

import UIKit

class groupsModel {
    var Name: String
    var Logo: UIImage
    
    init(name: String, logo: UIImage?) {
        self.Name = name
        self.Logo = logo!
    }
}

