//
//  HomeTVCell.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import UIKit

class HomeTVCell: UITableViewCell {
    
    //MARK: -OutLets
    @IBOutlet weak var backView: UIView!{
        didSet{
            backView.layer.cornerRadius = 10
            backView.layer.borderWidth = 0.5
            backView.layer.borderColor = UIColor.black.cgColor
            backView.layer.shadowColor = UIColor.black.cgColor
            backView.layer.shadowOffset = CGSize(width: 1, height: 1)
            backView.layer.shadowOpacity = 0.3
            backView.layer.shadowRadius = 2.0
        }
    }
    @IBOutlet weak var recipesImage: UIImageView!
    @IBOutlet weak var favoriteBtn: UIButton!
    @IBOutlet weak var recipesTitleLbl: UILabel!
    @IBOutlet weak var recipesDescriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
