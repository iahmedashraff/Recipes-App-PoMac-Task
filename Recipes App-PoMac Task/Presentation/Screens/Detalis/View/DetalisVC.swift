//
//  DetalisVC.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 15/03/2022.
//

import UIKit

class DetalisVC: UIViewController {
    
    var commingTitle: String?
    var commingRecipesImage: String?
    var commingProteins: String?
    var commingCalories: String?
    var commingFats: String?
    var commingCarbos: String?
    var commingIngredients: [String]?
    var commingDescription: String?
    
    var Ingredients: String?
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var recipesImage: UIImageView!
    
    @IBOutlet weak var proteinsLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var fatsLbl: UILabel!
    @IBOutlet weak var carbosLbl: UILabel!
    @IBOutlet weak var ingredientsLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleLbl.text = commingTitle
        proteinsLbl.text = commingProteins
        recipesImage.setImage(commingRecipesImage!)
        caloriesLbl.text = commingCalories
        fatsLbl.text = commingFats
        carbosLbl.text = commingCarbos
        Ingredients = ""
        for item in commingIngredients ?? [] {
            Ingredients = Ingredients! + item + "\n"
        }
        ingredientsLbl.text = Ingredients
        descriptionLbl.text = commingDescription
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
}
