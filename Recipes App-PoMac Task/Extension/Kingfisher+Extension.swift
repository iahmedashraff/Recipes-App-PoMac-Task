//
//  Kingfisher+Extension.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 13/03/2022.
//

import Foundation
import UIKit
import Kingfisher


extension UIImageView{
    
    func setImage(_ strULR: String){
        
        guard let handllingURL = (strULR).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {return}
        
        guard let imageURL = URL(string: handllingURL) else {return}
        
        self.kf.indicatorType = .activity
        
        self.kf.setImage(with: imageURL,
                            placeholder: #imageLiteral(resourceName: "no-image"),
                            options: [.transition(.fade(0.8))]
        )
    }
}
