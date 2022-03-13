//
//  HomeVC.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import UIKit

class HomeVC: UIViewController {
    
    var presenter = HomePresenter()

    //MARK: -OutLets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        presenter.getRecipces {
            self.tableView.reloadData()
        } error: { err in
            print(err)
        }
        setupUI()

        
    }
    //MARK: -IBACtions
    
    
    
    //MARK: -Helper Functions
    func setupUI(){
        tableView.tableFooterView = UIView()
    }
    func showPopup(msg: String) {
        let myalert = UIAlertController(title: "Error", message: msg, preferredStyle: UIAlertController.Style.alert)
        myalert.addAction(UIAlertAction(title: "Ok", style: .default) { (action:UIAlertAction!) in
            print("Selected")
        })
        self.present(myalert, animated: true)

    }
}
