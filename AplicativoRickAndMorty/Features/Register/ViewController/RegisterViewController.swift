//
//  RegisteViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

// MARK: - Protocols
protocol RegisterViewControllerDisplay: AnyObject{
    func showAlert(title: String, message: String)
}

//MARK: - RegisterViewController
final class RegisterViewController: UIViewController {
    
    // MARK: - Properties
    
    var screen: RegisterScreen?
    let interactor: RegisterInteracting
    
    // MARK: - Init
    init(interactor: RegisterInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
        screen?.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 
//MARK: - RegisterScreenProtocol
extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        interactor.navigationBackButtonInteractor()
    }
    
    func actionRegisterButton() {
        interactor.registerUser(
                  name: screen?.nameTextField.text,
                  email: screen?.emailTextField.text,
                  password: screen?.passwordTextField.text,
                  confirmPassword: screen?.confirmadPasswordTextField.text)
    }

}

//MARK: - RegisterViewControllerDisplay
extension RegisterViewController: RegisterViewControllerDisplay {
    func showAlert(title: String, message: String) {
        print(title,message)
    }
    
    
    
    
}
