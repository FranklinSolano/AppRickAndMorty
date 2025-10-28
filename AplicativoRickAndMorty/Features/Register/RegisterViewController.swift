//
//  RegisteViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

final class RegisterViewController: UIViewController {
    
    var screen: RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
        screen?.delegate(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
    }
    
    
}
