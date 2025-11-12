//
//  LoginPresenter.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol LoginPresenting {
    func navigationRegisterPresenter()
    func navigationForgotPasswordPresenter()
    func showAlertSuccessPresenter()
    func showAlertFailurePresenter(_ error: AuthenticationError)
}

//MARK: - LoginPresenter
final class LoginPresenter {
    
    //MARK: - Properties
    weak var view: LoginViewControllerDisplay?
    private let coordinator: LoginCoordinating
    
    //MARK: - Init
    init(view: LoginViewControllerDisplay?, coordinator: LoginCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
}

//MARK: - LoginPresenting
extension LoginPresenter: LoginPresenting {
    func showAlertSuccessPresenter() {
        view?.showAlert(title: "Sucesso", message: "Login realizado com sucesso!")
    }
    
    func showAlertFailurePresenter(_ error: AuthenticationError) {
        view?.showAlert(title: "Atencao", message: error.localizedDescription)
    }
    
    func navigationForgotPasswordPresenter() {
        coordinator.navigationForgotPasswordCoordinator()
    }
    
    func navigationRegisterPresenter() {
        coordinator.navigationRegisterCoordinator()
    }
}
