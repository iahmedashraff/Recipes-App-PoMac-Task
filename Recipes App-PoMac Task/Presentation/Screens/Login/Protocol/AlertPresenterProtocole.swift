//
//  AlertPresenterProtocole.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 14/03/2022.
//

import Foundation
import SwiftMessages
protocol AlertPresenterProtocole{

    func showAlertSatuseView(message: String, body:String, handler: ((AlertActionType)->Void)?)

}
