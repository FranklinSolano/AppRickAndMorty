//
//  LoginInteractor.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol LoginInteracting {
    func navigationRegisterInteractor()
    func navigationForgotPasswordInteractor()
}

//MARK: - LoginInteractor
final class LoginInteractor {
    
    //MARK: - Properties
    private let presenter: LoginPresenting
    private let service: LoginServicing
    
    //MARK: - Init
    init(presenter: LoginPresenting, service: LoginServicing) {
        self.presenter = presenter
        self.service = service
    }
}

//MARK: - LoginInteracting
extension LoginInteractor: LoginInteracting {
    func navigationForgotPasswordInteractor() {
        presenter.navigationForgotPasswordPresenter()
    }
    
    func navigationRegisterInteractor() {
        presenter.navigationRegisterPresenter()
    }
}
