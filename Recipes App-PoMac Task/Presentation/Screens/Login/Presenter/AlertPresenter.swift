//
//  LoginPresenter.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 13/03/2022.
//

import Foundation
import SwiftMessages
import UIKit
final class AlertPresenter: AlertPresenterProtocole{
  
    

    public static let instance: AlertPresenter = AlertPresenter()
    private init(){
        
    }
    func showAlertSatuseView(message: String, body: String,handler: ((AlertActionType) -> Void)?) {
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureTheme(.error)
        view.configureContent(title: message, body: body)
        SwiftMessages.hide()
        view.layoutMarginAdditions = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        SwiftMessages.show(view: view)
    }
    
    func showAlertError(message: String, body:String, handler: ((AlertActionType) -> Void)?) {
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureTheme(.error)
        view.configureContent(title: message, body: body)
        SwiftMessages.hide()
        view.layoutMarginAdditions = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        SwiftMessages.show(view: view)


    }
    
    func showAlertSucess(message: String, body:String, handler: ((AlertActionType) -> Void)?) {
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureTheme(.success)
        view.configureContent(title: message, body: body)
        SwiftMessages.hide()
        
        view.layoutMarginAdditions = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        SwiftMessages.show(view: view)


    }
}
