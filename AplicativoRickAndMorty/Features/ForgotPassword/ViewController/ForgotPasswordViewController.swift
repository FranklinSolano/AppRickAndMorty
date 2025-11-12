//
//  ForgotPasswordViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 27/10/25.
//

import UIKit

//MARK: - Protocol
protocol ForgotPasswordViewControllerDisplay: AnyObject {
    func showAlert(title: String,message: String)
    
}

//MARK: - ForgotPasswordViewController
final class ForgotPasswordViewController: UIViewController {
    
    //MARK: - Properties
    
    var screen: ForgotPasswordScreen?
    let interactor: ForgotPasswordInteracting
    
    //MARK: - Init
    
    init(interactor: ForgotPasswordInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle
    
    override func loadView() {
        screen = ForgotPasswordScreen()
        view = screen
        screen?.delegate(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - ForgotPasswordScreenProtocol
extension ForgotPasswordViewController: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        interactor.navigationBackButtonInteractor()
    }
    
    func actionEnterButton() {
        interactor.resetPasswordUserInteractor(email: screen?.emailTextField.text)
        
    }
}

//MARK: - ForgotPasswordViewControllerDisplay
extension ForgotPasswordViewController: ForgotPasswordViewControllerDisplay {
    func showAlert(title: String, message: String) {
        print(title,message)
    }
}
