//
//  HomeVC.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import UIKit

class HomeVC: UIViewController {
    //MARK: -OutLets
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    //MARK: -IBACtions
    
    
    
    //MARK: -Helper Functions


}
