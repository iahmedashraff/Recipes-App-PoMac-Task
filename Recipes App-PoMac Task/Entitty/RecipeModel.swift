//
//  RecipeModel.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import Foundation

class RecipeModel {
    
    var id: String?
    var fats: String?
    var name: String?
    var image: String?
    var carbos: String?
    var calories: String?
    var headline: String?
    var proteins: String?
    var favorites: Int?
    var description: String?
    var ingredients:[String]?
    init(){}
    
    
    init(recipeAPI: [String:Any]?){
        self.id = recipeAPI?["id"] as? String
        self.fats = recipeAPI?["fats"] as? String
        self.name = recipeAPI?["name"] as? String
        self.image = recipeAPI?["image"] as? String
        self.carbos = recipeAPI?["carbos"] as? String
        self.calories = recipeAPI?["calories"] as? String
        self.headline = recipeAPI?["headline"] as? String
        self.proteins = recipeAPI?["proteins"] as? String
        self.favorites = recipeAPI?["favorites"] as? Int
        self.description = recipeAPI?["description"] as? String
        self.ingredients = recipeAPI?["ingredients"] as? [String]
    }
    

}
