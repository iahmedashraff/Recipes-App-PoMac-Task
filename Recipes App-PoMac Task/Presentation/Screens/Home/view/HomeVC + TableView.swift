//
//  HomeVC + TableView.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import Foundation
import UIKit


extension HomeVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter.recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! HomeTVCell
        cell.recipesTitleLbl.text = presenter.recipes[indexPath.row].name
        cell.recipesDescriptionLbl.text = presenter.recipes[indexPath.row].description
        cell.recipesImage.setImage(presenter.recipes[indexPath.row].image!)
        
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.ScreenHeight / 3
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "DetalisVC") as! DetalisVC
            navigationController?.pushViewController(nextViewController, animated: true)
        nextViewController.commingTitle = presenter.recipes[indexPath.row].name
        nextViewController.commingDescription = presenter.recipes[indexPath.row].description
        nextViewController.commingRecipesImage = presenter.recipes[indexPath.row].image!
        nextViewController.commingProteins = presenter.recipes[indexPath.row].proteins
        nextViewController.commingCalories = presenter.recipes[indexPath.row].calories
        nextViewController.commingFats = presenter.recipes[indexPath.row].fats
        nextViewController.commingCarbos = presenter.recipes[indexPath.row].carbos
        nextViewController.commingIngredients = presenter.recipes[indexPath.row].ingredients
        
    }
}
