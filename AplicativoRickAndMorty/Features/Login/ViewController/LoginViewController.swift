//
//  LoginViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

//MARK: - Protocol
protocol LoginViewControllerDisplay: AnyObject {
    func showAlert(title: String, message: String)
}

//MARK: - LoginViewController
final class LoginViewController: UIViewController {
    
    //MARK: - Properties
    
    var screen: LoginScreen?
    let interactor: LoginInteracting
    
    //MARK: - Init
    
    init(interactor: LoginInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - LifeCycle
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
        screen?.delegate(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - LoginScreenProtocol
extension LoginViewController: LoginScreenProtocol {
    func actionRegisterButton() {
        interactor.navigationRegisterInteractor()
    }
    
    func actionForgotPasswordButton() {
        interactor.navigationForgotPasswordInteractor()
    }
    
    func actionTabBar() {
        
        interactor.loginUserInteractor(email: screen?.emailTextFiel.text,
                                       password: screen?.passwordTextFiel.text)
        
    }
}

//MARK: - LoginViewControllerDisplay
extension LoginViewController: LoginViewControllerDisplay {
    func showAlert(title: String, message: String) {
        print(title,message)
    }
}
