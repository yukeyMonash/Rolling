//
//  Model.swift
//  Rolling
//
//  Created by yukey on 23/6/20.
//  Copyright © 2020 Yukey. All rights reserved.
//

import Foundation
import UIKit

struct Model: Codable {
    let name: String
    let image: [Image]
    let date: String
    
    init(name: String, image: [Image], date: String) {
        self.name = name
        self.image = image
        self.date = date
    }
}

struct Image: Codable{
    let imageData: Data?
    
    init(withImage image: UIImage) {
        self.imageData = image.pngData()
    }

    func getImage() -> UIImage? {
        guard let imageData = self.imageData else {
            return nil
        }
        let image = UIImage(data: imageData)
        
        return image
    }
}



