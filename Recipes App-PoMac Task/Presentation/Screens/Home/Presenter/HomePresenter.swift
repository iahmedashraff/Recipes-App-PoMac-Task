//
//  HomePresenter.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import Foundation
import Alamofire

class HomePresenter{
    var recipes = [RecipeModel]()

    func getRecipces(success:(()->())?, error:((String)->())?) {
        AF.request("https://api.npoint.io/43427003d33f1f6b51cc").response { response in
            switch response.result{
            case .success(let data):
                do{
                    let jsonRecipes = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: Any]]
                    for item in jsonRecipes! as [[String:Any]] {
                        let recipesModel = RecipeModel(recipeAPI: item)
                        self.recipes.append(recipesModel)
                        
                    }
                    success?()
                    
                }catch{
                    
                }
            case .failure(let err):
                print(err.localizedDescription)
                error?(err.localizedDescription)
            }
        }
    }

}
