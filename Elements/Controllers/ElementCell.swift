//
//  ElementCell.swift
//  Elements
//
//  Created by Oscar Victoria Gonzalez  on 12/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ElementCell: UITableViewCell {
    
    @IBOutlet weak var elementImageView: UIImageView!
    @IBOutlet weak var elementNameLabel: UILabel!
    @IBOutlet weak var elementInfoLabel: UILabel!
    
    func configured(for element: Elements) {
        elementNameLabel.text = element.name
        elementInfoLabel.text = "\(element.symbol)(\(element.number.description)) \(element.atomic_mass)"

        
     
        let elementId = element.number
        
        if elementId < 10 {
            let imageURL = "http:www.theodoregray.com/periodictable/Tiles/00\(element.number)/s7.JPG"
            
            elementImageView.getImage(with: imageURL) { (result) in
                switch result {
                case .failure(let error):
                    print("error \(error)")
                case .success(let image):
                    DispatchQueue.main.async {
                        self.elementImageView.image = image
                    }
                }
            }
            
        } else if elementId >= 10 {
            let secondImage = "http:www.theodoregray.com/periodictable/Tiles/0\(element.number)/s7.JPG"
            
            elementImageView.getImage(with: secondImage) { (result) in
                switch result {
                case .failure(let error):
                    print("error \(error)")
                case .success(let image):
                    DispatchQueue.main.async {
                        self.elementImageView.image = image
                    }
                }
            }
            
        } else if elementId > 99 {
            let thirdImage = "http:www.theodoregray.com/periodictable/Tiles/\(element.number)/s7.JPG"
            
            elementImageView.getImage(with: thirdImage) { (result) in
                switch result {
                case .failure(let error):
                    print("error \(error)")
                case .success(let image):
                    DispatchQueue.main.async {
                        self.elementImageView.image = image
                    }
                }
            }
        }
        
    }
}



//        let elementNum = element.number
     //        var newElementNum = [elementNum]
     //        if newElementNum.count > 2 {
     //            newElementNum.append(00)
     //        } else {
     //            newElementNum.append(0)
     //        }
     //
     
