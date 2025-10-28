//
//  RegisteViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

// MARK: - Protocols
protocol RegisterViewControllerDisplay: AnyObject{
    
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
        navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
    }

}

//MARK: - RegisterViewControllerDisplay
extension RegisterViewController: RegisterViewControllerDisplay {
    
}
