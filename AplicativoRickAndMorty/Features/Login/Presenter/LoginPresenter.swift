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
    func navigationForgotPasswordPresenter() {
        coordinator.navigationForgotPasswordCoordinator()
    }
    
    func navigationRegisterPresenter() {
        coordinator.navigationRegisterCoordinator()
    }
}
