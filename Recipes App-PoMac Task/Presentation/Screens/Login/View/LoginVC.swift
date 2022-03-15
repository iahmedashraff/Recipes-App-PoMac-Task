//
//  ViewController.swift
//  Recipes App-PoMac Task
//
//  Created by Ahmed Ashraf on 11/03/2022.
//

import UIKit

class LoginVC: UIViewController {
    //MARK: -Constanse
    let email = "a@a.com"
    let password = "123123"
    
    //MARK: -Outlets
    @IBOutlet weak var viewEmail: textFeildNib!
    @IBOutlet weak var viewPassword: textFeildNib!
    @IBOutlet weak var loginBtnOutlets: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //MARK: -IBActions
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        if compeletfields() == true, self.viewEmail.text == email || self.viewPassword.text == password{
            guard let email = self.viewEmail.text, !email.isEmpty else {return}
            guard let password = self.viewPassword.text, !password.isEmpty else {return}
            AlertPresenter.instance.showAlertSucess(message: "You Logged in Sucessflly", body: "You Logged in Sucessflly", handler: nil)
            let tabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
            tabBarController.modalPresentationStyle = .fullScreen
            self.present(tabBarController, animated: true, completion: nil)
          
            
        }else if self.viewEmail.text != email || self.viewPassword.text != password{
            AlertPresenter.instance.showAlertError(message: "Your Email or Password is Incorrect", body: "Your Email or Password is Nncorrect", handler: nil)
           
        }
    }
    
    
    //MARK: -Helper Functions
    func setupUI(){
        viewEmail.placeHolder = "Email Address"
        viewEmail.textField.textAlignment = .left
        viewEmail.keyboardType = .emailAddress
        viewPassword.placeHolder = "Password"
        viewPassword.textField.textAlignment = .left
        viewPassword.isSecure = true
        
    }
    func compeletfields() -> Bool {
        var flag = true
        if (viewEmail.text?.isEmpty ?? true)  == true {
            viewEmail.lblPlaceHolder.isHidden = false
            viewEmail.lblPlaceHolder.text = "من فضلك أدخل بريدك الإلكترونى*"
            viewEmail.lblPlaceHolder.textColor = UIColor.red
            
            flag = false
        }else {
            viewEmail.lblPlaceHolder.isHidden = true
            viewEmail.lblPlaceHolder.text = ""
        }
        if (viewPassword.text?.isEmpty ?? true)  == true {
            viewPassword.lblPlaceHolder.isHidden = false
            viewPassword.lblPlaceHolder.text = "من فضلك أدخل كلمة المرور*"
            viewPassword.lblPlaceHolder.textColor = UIColor.red
            flag = false
        }else {
            viewPassword.lblPlaceHolder.isHidden = true
            viewPassword.lblPlaceHolder.text = ""
        }
        return flag
    }
    
}

