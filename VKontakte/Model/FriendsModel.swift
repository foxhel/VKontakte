//
//  File.swift
//  VKontakte
//
//  Created by Elena Kostenko on 09/04/2021.
//

import UIKit

class friendModel {
    var Name: String
    var Photo: UIImage
    
    init(name: String, photo: UIImage?) {
        self.Name = name
        self.Photo = photo!
    }
}
