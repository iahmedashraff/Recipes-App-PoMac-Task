//
//  HomePresenter.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 12/03/2022.
//

import Foundation
import Alamofire

class HomePresenter{
    
    func getCountries() {
        AF.request("https://api.npoint.io/43427003d33f1f6b51cc").response { response in
            if response.response?.statusCode == 200 {
                do {
                    // make sure this JSON is in the format we expect
                    if let json = try JSONSerialization.jsonObject(with: response.data!, options: []) as? [String: Any] {
                        // try to read out a string array
                        let jsondata = json["data"] as? [String: Any]
                        self.list = jsondata?["countries"] as? [[String: Any]] ?? []
                        self.delegate?.successLoad()
                    }
                } catch let err as NSError {
                    print("Failed to load: \(err.localizedDescription)")
                    self.delegate?.errorLoad(error: err.localizedDescription)
                }

            }else if response.response?.statusCode == 404 {
                self.delegate?.errorLoad(error: "ss error")
            }else {
                //internet error
                self.delegate?.errorLoad(error: "net error")


            }
            
        }
    }

}
