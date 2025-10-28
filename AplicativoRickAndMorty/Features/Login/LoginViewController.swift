//
//  ViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    

    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
        screen?.delegate(delegate: self)
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    
}


extension LoginViewController: LoginScreenProtocol {
    func actionRegisterButton() {
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionForgotPasswordButton() {
        let vc = ForgotPasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionTabBar() {
        
    }
    
    
}
