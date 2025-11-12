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
    func loginUserInteractor(email: String?, password: String?)
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
    func loginUserInteractor(email: String?, password: String?) {
        do {
            let validation = try validateFielsInput(email: email, password: password)
            
            service.loginUser(validation.email, validation.password) { result in
                switch result {
                case .success:
                    self.presenter.showAlertSuccessPresenter()
                case .failure(let error):
                    let loginError = AuthenticationError.firebaseError(error.localizedDescription)
                    self.presenter.showAlertFailurePresenter(loginError)
                }
            }
            
            
        } catch {
            if let loginError = error as? AuthenticationError {
                self.presenter.showAlertFailurePresenter(loginError)
            } else {
                self.presenter.showAlertFailurePresenter(.firebaseError(error.localizedDescription))
            }
        }
    }
    
    
    
    func navigationForgotPasswordInteractor() {
        presenter.navigationForgotPasswordPresenter()
    }
    
    func navigationRegisterInteractor() {
        presenter.navigationRegisterPresenter()
    }
    
    private func validateFielsInput(email: String?, password: String?) throws -> (email: String, password: String) {
        
        guard let email, !email.isEmpty else {
            throw AuthenticationError.emptyEmail
        }
        
        guard let password, !password.isEmpty else {
            throw AuthenticationError.emptyPassword
        }
        
        return (email,password)
        
    }
}
