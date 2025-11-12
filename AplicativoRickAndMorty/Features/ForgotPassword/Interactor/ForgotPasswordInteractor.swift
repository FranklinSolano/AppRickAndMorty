//
//  ForgotPasswordInteractor.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol ForgotPasswordInteracting {
    func navigationBackButtonInteractor()
    func resetPasswordUserInteractor(email: String?)
}

//MARK: - ForgotPasswordInteractor
final class ForgotPasswordInteractor {
    
    //MARK: - Properties
    
    let presenter: ForgotPasswordPresenting
    private let service: ForgotPasswordServicing
    
    //MARK: - Init
    
    init(presenter: ForgotPasswordPresenting, service: ForgotPasswordServicing) {
        self.presenter = presenter
        self.service = service
    }
}

//MARK: - ForgotPasswordInteracting
extension ForgotPasswordInteractor: ForgotPasswordInteracting {
    func resetPasswordUserInteractor(email: String?) {
        
        do {
            
            let validation = try validateFielsInput(email: email)
            
            service.resetPassword(email: validation) { result in
                switch result {
                case .success:
                    self.presenter.showAlertSuccessPresenter()
                case .failure(let error):
                    let forgotError = AuthenticationError.firebaseError(error.localizedDescription)
                    self.presenter.showAlertFailPresenter(forgotError)
                }
            }
            
        } catch {
            if let confirmadPassword = error as? AuthenticationError {
                self.presenter.showAlertFailPresenter(confirmadPassword)
            } else {
                self.presenter.showAlertFailPresenter(.firebaseError(error.localizedDescription))
            }
        }
        
    }
    
    func navigationBackButtonInteractor() {
        presenter.navigationBackButtonPresenter()
    }
    
    private func validateFielsInput(email: String?) throws -> String {
        
        guard let email, !email.isEmpty else {
            throw AuthenticationError.emptyEmail
        }
        return email
        
    }
}
